import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/user_card.dart';
import '../providers/user_provider.dart';
class Day13Screen extends StatefulWidget {
  const Day13Screen({super.key});

  @override
  State<Day13Screen> createState() => _Day13ScreenState();
}

class _Day13ScreenState extends State<Day13Screen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<UserProvider>().fetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Users | Fav: ${provider.favoriteCount}",
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: provider.toggleFavoriteFilter,
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              _buildSearchBar(),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: provider.fetchUsers,
                  child: provider.visibleUsers.isEmpty
                      ? const Center(child: Text("No users found"))
                      : ListView.builder(
                          itemCount:
                              provider.visibleUsers.length,
                          itemBuilder: (context, index) {
                            final user =
                                provider.visibleUsers[index];

                            return Dismissible(
                              key: ValueKey(user.id),
                              direction:
                                  DismissDirection.endToStart,
                              background: Container(
                                color: Colors.red,
                                alignment:
                                    Alignment.centerRight,
                                padding:
                                    const EdgeInsets.only(
                                        right: 20),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                              onDismissed: (_) {
                                provider.deleteUser(user);

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "${user.name} deleted"),
                                  ),
                                );
                              },
                              child: UserCard(user: user),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),

          /// 🔄 Loading Overlay
          if (provider.status == Status.loading)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search users...",
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onChanged: (value) {
          context.read<UserProvider>().updateSearch(value);
        },
      ),
    );
  }
}

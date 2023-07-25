import 'package:flutter/material.dart';

class BlogRow extends StatelessWidget {
  final String title;
  final String excerpt;
  final String coverURL;

  const BlogRow({
    Key? key,
    required this.title,
    required this.excerpt,
    required this.coverURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: coverURL != null
                ? Image.network(coverURL)
                : const FlutterLogo(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  excerpt,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

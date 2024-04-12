import 'package:flutter/material.dart';
import 'package:trial/models/visitModel.dart';

class VisitElement extends StatelessWidget {
  const VisitElement({super.key, required this.visitList});
  final List<Visit> visitList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: ListView.builder(
        itemCount: visitList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            child: InkWell(
              onTap: () {},
              splashColor: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer
                          .withOpacity(0.9),
                      Theme.of(context).colorScheme.primary.withOpacity(0.75),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      visitList[index].hospitalName,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 25,
                          ),
                    ),
                    const Text("", style: TextStyle(fontSize: 10)),
                    Row(
                      children: [
                        Text(
                          visitList[index].doctorName,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 16,
                              ),
                        ),
                        const Spacer(),
                        Text(
                          visitList[index].doctorId,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontSize: 18,
                              ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

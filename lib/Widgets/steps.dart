import "package:flutter/material.dart";

class Steps extends StatelessWidget {
  final List steps;
  const Steps({super.key, required this.steps});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Steps",
          style: TextStyle(fontSize: 30, fontFamily: "RobotoCondensed"),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 280,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Card(
                elevation: 20,
                shadowColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).colorScheme.primary,
                                    child: FittedBox(
                                      child: Text("#${(index + 1)}",
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.white)),
                                    )),
                                title: Text(steps[index],
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20)),
                              ),
                              const Divider(
                                thickness: 2,
                              )
                            ],
                          ));
                    },
                    itemCount: steps.length,
                  ),
                )))
      ],
    );
  }
}

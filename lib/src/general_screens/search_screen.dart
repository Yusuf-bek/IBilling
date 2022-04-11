import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: getHeight(70),
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: getHeight(12)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                    Container(
                      padding:  EdgeInsets.only(top: getHeight(10)),
                      width: getWidth(260),
                      height: getHeight(30),
                      color: Colors.transparent,
                      child: TextFormField(
                        controller: TextEditingController(),
                        decoration: const InputDecoration(hintText: "Search by keywords", border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: getHeight(12)),
                      child: IconButton(
                        onPressed: () {},
                        icon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.cancel,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF039678),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50)
              )

            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello Duncan', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  ),),
                  subtitle: Text('Good Afternoon', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.white54)
                ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Container(
            color: Color(0xFF039678),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100)
                        

                  )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Dashboard', Icons.dashboard_customize_outlined, Color(0xFF039678)),
                  itemDashboard('Products', Icons.store_outlined, Color(0xFF039678)),
                  itemDashboard('Stock', Icons.storefront_outlined, Color(0xFF039678)),
                  itemDashboard('Sales', Icons.bar_chart_outlined, Color(0xFF039678)),
                  itemDashboard('Procurement', Icons.shopping_cart_outlined, Color(0xFF039678)),
                  itemDashboard('Accounts', Icons.account_balance_wallet_outlined, Color(0xFF039678)),

                ],
              ),

            ),
            
          ),

        ],
      ),
    );

  }
  itemDashboard(String title, IconData iconData, Color background)=> Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Color(0xFF039678).withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5,
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData,color: Colors.white,),
        ),
        const SizedBox(height: 8),
        Text(title,style: Theme.of(context).textTheme.titleMedium,)
      ],
    ),
  );
}

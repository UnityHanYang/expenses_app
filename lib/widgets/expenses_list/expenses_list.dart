import 'package:expenses_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expenses_app/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.RemoveExpense, required this.expenses});
  final Function(Expense expense) RemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.55),
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        onDismissed: (direction) {
          RemoveExpense(expenses[index]);
        },  
        child: EXpenseItem(expenses[index]),
      ),
    );
  }
}

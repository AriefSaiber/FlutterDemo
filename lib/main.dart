import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterDemoApp());
}

class FlutterDemoApp extends StatelessWidget {
  const FlutterDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Workshop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Workshop'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Flutter Widgets Demo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Navigation buttons to different demo screens
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContainerDemoScreen()),
              ),
              child: const Text('1. Container & Spacing Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextIconDemoScreen()),
              ),
              child: const Text('2. Text & Icon Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LayoutDemoScreen()),
              ),
              child: const Text('3. Row, Column & Expanded Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StackDemoScreen()),
              ),
              child: const Text('4. Stack Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ButtonDemoScreen()),
              ),
              child: const Text('5. Button Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SetStateDemoScreen()),
              ),
              child: const Text('6. setState Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextFieldDemoScreen()),
              ),
              child: const Text('7. TextField Demo'),
            ),
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NavigationDemoScreen()),
              ),
              child: const Text('8. Navigation Demo'),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 1. CONTAINER & SPACING DEMO
// =============================================================================
class ContainerDemoScreen extends StatelessWidget {
  const ContainerDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container & Spacing Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Container
            const Text(
              '1. Basic Container:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Basic Container',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Container with decoration
            const Text(
              '2. Container with Decoration:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Decorated Container',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Container with padding
            const Text(
              '3. Container with Padding:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Container with padding',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            const SizedBox(height: 20),

            // Container with margin
            const Text(
              '4. Container with Margin:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Container with margin',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

            const SizedBox(height: 20),

            // Spacing examples
            const Text(
              '5. Spacing Examples:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Container(
              color: Colors.red,
              child: const Text('No spacing'),
            ),
            const SizedBox(height: 10), // 10px vertical spacing
            Container(
              color: Colors.red,
              child: const Text('With SizedBox spacing'),
            ),

            const SizedBox(height: 20),

            // Padding widget
            const Text(
              '6. Padding Widget:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.teal,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Text with Padding widget',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 2. TEXT & ICON DEMO
// =============================================================================
class TextIconDemoScreen extends StatelessWidget {
  const TextIconDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text & Icon Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Text
            const Text(
              '1. Basic Text:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('This is a basic text widget'),

            const SizedBox(height: 20),

            // Text with styling
            const Text(
              '2. Text with Styling:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Styled Text Example',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),

            const SizedBox(height: 20),

            // Text with different sizes
            const Text(
              '3. Different Text Sizes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Large Text',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Medium Text',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'Small Text',
              style: TextStyle(fontSize: 12),
            ),

            const SizedBox(height: 20),

            // Basic Icon
            const Text(
              '4. Basic Icon:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Icon(Icons.favorite, size: 50, color: Colors.red),

            const SizedBox(height: 20),

            // Icons with different sizes
            const Text(
              '5. Icons with Different Sizes:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.star, size: 24, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.star, size: 32, color: Colors.yellow),
                SizedBox(width: 10),
                Icon(Icons.star, size: 48, color: Colors.yellow),
              ],
            ),

            const SizedBox(height: 20),

            // Different types of icons
            const Text(
              '6. Different Types of Icons:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.home, color: Colors.blue),
                SizedBox(width: 10),
                Icon(Icons.settings, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.person, color: Colors.green),
                SizedBox(width: 10),
                Icon(Icons.email, color: Colors.orange),
                SizedBox(width: 10),
                Icon(Icons.phone, color: Colors.purple),
              ],
            ),

            const SizedBox(height: 20),

            // Text with icon
            const Text(
              '7. Text with Icon:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.info, color: Colors.blue),
                SizedBox(width: 8),
                Text('This is text with an icon'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 3. ROW, COLUMN & EXPANDED DEMO
// =============================================================================
class LayoutDemoScreen extends StatelessWidget {
  const LayoutDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row, Column & Expanded Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Row
            const Text(
              '1. Basic Row:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Row with mainAxisAlignment
            const Text(
              '2. Row with MainAxisAlignment:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Basic Column
            const Text(
              '3. Basic Column:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Column with crossAxisAlignment
            const Text(
              '4. Column with CrossAxisAlignment:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text('2')),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Expanded widget
            const Text(
              '5. Expanded Widget:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.red,
                    child: const Center(child: Text('Flex 1')),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: const Center(child: Text('Flex 2')),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    color: Colors.blue,
                    child: const Center(child: Text('Flex 1')),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Nested Row and Column
            const Text(
              '6. Nested Row and Column:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        color: Colors.red,
                        child: const Center(child: Text('Top')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.orange,
                        child: const Center(child: Text('Bottom')),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        color: Colors.blue,
                        child: const Center(child: Text('Top')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.purple,
                        child: const Center(child: Text('Bottom')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 4. STACK DEMO
// =============================================================================
class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Stack
            const Text(
              '1. Basic Stack:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Stack with positioned widgets
            const Text(
              '2. Stack with Positioned Widgets:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.grey[300],
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                      child: const Center(child: Text('Top\nLeft')),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                      child: const Center(child: Text('Top\nRight')),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                      child: const Center(child: Text('Bottom\nLeft')),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
                      child: const Center(child: Text('Bottom\nRight')),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Stack with centered overlay
            const Text(
              '3. Stack with Centered Overlay:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Background',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                      child: Text(
                        'Overlay',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Stack with text overlay
            const Text(
              '4. Stack with Text Overlay:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Overlay Text',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 5. BUTTON DEMO
// =============================================================================
class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ElevatedButton
            const Text(
              '1. ElevatedButton:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('ElevatedButton pressed!')),
                );
              },
              child: const Text('Elevated Button'),
            ),

            const SizedBox(height: 20),

            // TextButton
            const Text(
              '2. TextButton:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('TextButton pressed!')),
                );
              },
              child: const Text('Text Button'),
            ),

            const SizedBox(height: 20),

            // OutlinedButton
            const Text(
              '3. OutlinedButton:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OutlinedButton pressed!')),
                );
              },
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 20),

            // IconButton
            const Text(
              '4. IconButton:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Home icon pressed!')),
                    );
                  },
                  icon: const Icon(Icons.home),
                  tooltip: 'Home',
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Settings icon pressed!')),
                    );
                  },
                  icon: const Icon(Icons.settings),
                  tooltip: 'Settings',
                ),
                IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Favorite icon pressed!')),
                    );
                  },
                  icon: const Icon(Icons.favorite),
                  tooltip: 'Favorite',
                ),
              ],
            ),

            const SizedBox(height: 20),

            // FloatingActionButton
            const Text(
              '5. FloatingActionButton:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('FloatingActionButton pressed!')),
                  );
                },
                child: const Icon(Icons.add),
              ),
            ),

            const SizedBox(height: 20),

            // Button with custom styling
            const Text(
              '6. Custom Styled Button:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Custom button pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                'Custom Button',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // Disabled button
            const Text(
              '7. Disabled Button:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: null, // This makes the button disabled
              child: const Text('Disabled Button'),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 6. SETSTATE DEMO
// =============================================================================
class SetStateDemoScreen extends StatefulWidget {
  const SetStateDemoScreen({super.key});

  @override
  State<SetStateDemoScreen> createState() => _SetStateDemoScreenState();
}

class _SetStateDemoScreenState extends State<SetStateDemoScreen> {
  int _counter = 0;
  String _message = 'Hello Flutter!';
  bool _isVisible = true;
  Color _containerColor = Colors.blue;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _changeMessage() {
    setState(() {
      _message = _message == 'Hello Flutter!' ? 'Message changed!' : 'Hello Flutter!';
    });
  }

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeColor() {
    setState(() {
      _containerColor = _containerColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('setState Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Counter example
            const Text(
              '1. Counter with setState:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    'Counter: $_counter',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter,
                        child: const Text('-'),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter,
                        child: const Text('+'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Message change example
            const Text(
              '2. Changing Text with setState:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    _message,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _changeMessage,
                    child: const Text('Change Message'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Visibility toggle example
            const Text(
              '3. Toggle Visibility with setState:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  if (_isVisible)
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'Visible!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _toggleVisibility,
                    child: Text(_isVisible ? 'Hide' : 'Show'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Color change example
            const Text(
              '4. Change Color with setState:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: _containerColor,
                    child: const Center(
                      child: Text(
                        'Color\nChanges!',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _changeColor,
                    child: const Text('Change Color'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 7. TEXTFIELD DEMO
// =============================================================================
class TextFieldDemoScreen extends StatefulWidget {
  const TextFieldDemoScreen({super.key});

  @override
  State<TextFieldDemoScreen> createState() => _TextFieldDemoScreenState();
}

class _TextFieldDemoScreenState extends State<TextFieldDemoScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _multilineController = TextEditingController();

  String _displayText = '';
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _multilineController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Basic TextField
            const Text(
              '1. Basic TextField:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                hintText: 'John Doe',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _displayText = value;
                });
              },
            ),
            const SizedBox(height: 10),
            Text('You typed: $_displayText'),

            const SizedBox(height: 20),

            // TextField with controller
            const Text(
              '2. TextField with Controller:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Hello, ${_nameController.text}!')),
                );
              },
              child: const Text('Get Name'),
            ),

            const SizedBox(height: 20),

            // Email TextField
            const Text(
              '3. Email TextField:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Password TextField
            const Text(
              '4. Password TextField:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                border: const OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Multiline TextField
            const Text(
              '5. Multiline TextField:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _multilineController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Comments',
                hintText: 'Enter your comments here...',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            // Form submission
            const Text(
              '6. Form Submission:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String message = 'Name: ${_nameController.text}\n';
                message += 'Email: ${_emailController.text}\n';
                message += 'Password: ${_passwordController.text}\n';
                message += 'Comments: ${_multilineController.text}';

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    duration: const Duration(seconds: 3),
                  ),
                );
              },
              child: const Text('Submit Form'),
            ),

            const SizedBox(height: 20),

            // Clear form
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _nameController.clear();
                  _emailController.clear();
                  _passwordController.clear();
                  _multilineController.clear();
                  _displayText = '';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text('Clear Form'),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// 8. NAVIGATION DEMO
// =============================================================================
class NavigationDemoScreen extends StatelessWidget {
  const NavigationDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Navigation Examples:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Push to new screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(
                      title: 'Detail Screen',
                      message: 'This is a detail screen accessed via push()',
                    ),
                  ),
                );
              },
              child: const Text('Push to Detail Screen'),
            ),
            const SizedBox(height: 10),

            // Push and replace
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(
                      title: 'Replacement Screen',
                      message: 'This screen replaced the previous one',
                    ),
                  ),
                );
              },
              child: const Text('Push and Replace'),
            ),
            const SizedBox(height: 10),

            // Push and remove until
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(
                      title: 'New Root Screen',
                      message: 'This is now the root screen',
                    ),
                  ),
                  (route) => false, // Remove all previous routes
                );
              },
              child: const Text('Push and Remove All'),
            ),
            const SizedBox(height: 10),

            // Show dialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Dialog'),
                      content: const Text('This is a simple dialog.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 10),

            // Show bottom sheet
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          const Text(
                            'Bottom Sheet',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text('This is a modal bottom sheet.'),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('Show Bottom Sheet'),
            ),
            const SizedBox(height: 10),

            // Navigate with arguments
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArgumentsScreen(
                      name: 'John Doe',
                      age: 25,
                    ),
                  ),
                );
              },
              child: const Text('Navigate with Arguments'),
            ),
          ],
        ),
      ),
    );
  }
}

// Detail screen for navigation demo
class DetailScreen extends StatelessWidget {
  final String title;
  final String message;

  const DetailScreen({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

// Arguments screen for navigation demo
class ArgumentsScreen extends StatelessWidget {
  final String name;
  final int age;

  const ArgumentsScreen({
    super.key,
    required this.name,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments Screen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name: $name',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Age: $age',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

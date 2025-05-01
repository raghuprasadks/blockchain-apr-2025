async function fetchTodo() {
    try {
        const response = await fetch('https://jsonplaceholder.typicode.com/todos/1');
        const json = await response.json();
        console.log(json);
    } catch (error) {
        console.error('Error fetching the todo:', error);
    }
}

fetchTodo();

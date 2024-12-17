export async function GET() {
    const response = await fetch('https://homestuck-1-5.onrender.com/api/available');
    const data = await response.json();
    return new Response(JSON.stringify(data), {
        headers: { 'Content-Type': 'application/json' },
    });
}
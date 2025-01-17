 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>




<div class="container">
        <h1>Update Info</h1>
        <c:forEach items="${kk}" var="e">
        <form action="/spring_mvcproject_crud/updateManagerInfo" method="post">
            <div class="form-control">
            
            <input type="hidden" name="mid"  value="${e.mid}" placeholder="enter your name" required id="id">
                <input type="text" name="mname"  value="${e.mname}" placeholder="enter your name" required name="name">
                <label>Username</label>
            </div>
             <div class="form-control">
                <input type="email" name="memail"  value="${e.memail}" placeholder="enter your email" required name="email">
                <label>email</label>
            </div>
            <div class="form-control">
                <input type="password" name="mpass"  value="${e.mpass}"  placeholder="enter your password" required name="password">
                <label>Password</label>
            </div>
            <div class="form-control">
                <input type="password" name="mcpass" value="${e.mcpass}"  placeholder="enter your confirm password"  required name="password">
                <label>Confirm password</label>
            </div>
            <button  class="btn" ><input type="submit" value="">Update</button>
            
            <p class="text">Don't have an account? <a href="#">Register</a></p>
        </form>
        </c:forEach>
    </div>

</body>
</html>

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap');

:root {
    font-size: 100%;
    --white: oklch(100% 0 0);
    --primary-light: oklch(78.81% 0.109 255.212);
    --primary: oklch(58.63% 0.227 281.34);
    --primary-dark: oklch(47.56% 0.273 284.25);

    --greyLight-1:  oklch(93.77% 0.015 257.2);
    --greyLight-2:  oklch(85.86% 0.033 270.41);
    --greyDark:     oklch(73.91% 0.056 267.7);

    --background: var(--greyLight-1);
    --onBackground: var(--greyDark);

    --surface: var(--primary);
    --onSurface: var(--white);
    --onSurface-Dark: oklch(58.2% 0.228 266.74);

    --shadow: .3rem .3rem .6rem var(--greyLight-2),
             -.2rem -.2rem .5rem var(--white);
}

* {
    box-sizing: border-box;
}

body {
    font-family: 'Inter', sans-serif;
    background-color: var(--background);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    overflow: hidden;
    margin: 0;
}

.container {
    background-color: var(--background);
    color: var(--onBackground);
    padding: 1.25rem 2.5rem;
    border-radius: 1.5rem;
    box-shadow: var(--shadow);
}

.container h1 {
    font-size: 1.8rem;
    text-align: center;
    padding-bottom: 1.25rem;
    font-weight: 600;
}

.container a {
    text-decoration: none;
    color: var(--onSurface-Dark);
}

.form-control {
    position: relative;
    margin: 1.25rem 0 2.5rem 0;
    width: 18.75rem;
}

.form-control input {
    background-color: transparent;
    border: 0;
    border-bottom: 0.125rem var(--onBackground) solid;
    display: block;
    width: 100%;
    padding: .9rem;
    font-size: 1.2rem;
    color: var(--onBackground);
    font-weight: 400;
}

.form-control input:focus,
.form-control input:valid {
    outline: 0;
    border-bottom-color: var(--greyLight-2);
}

.form-control label {
    position: absolute;
    top: .9rem;
    left: 0;
}

.form-control label span {
    display: inline-block;
    font-size: 1.2rem;
    min-width: .3rem;
    transition: 300ms cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.form-control input:focus + label span,
.form-control input:valid + label span {
    color: var(--greyLight-2);
    transform: translateY(-1.875rem);
    font-size: 1rem;
}

.btn {
    cursor: pointer;
    display: inline-block;
    width: 100%;
    background: var(--surface);
    padding: .9rem;
    font-family: inherit;
    font-size: 1.2rem;
    border: 0;
    border-radius: .8rem;
    box-shadow:inset .2rem .2rem 1rem var(--primary-light), 
              inset -.2rem -.2rem 1rem var(--primary-dark),
              var(--shadow);
    color: var(--greyLight-1);
    transition: 300ms ease;
    font-weight: 500;
}

.btn:focus {
    outline: 0;
}

.btn:hover{
    color: var(--onSurface);
}

.btn:active {
    box-shadow:inset .2rem .2rem 1rem var(--primary-dark), 
             inset -.2rem -.2rem 1rem var(--primary-light);
    color: var(--onSurface);
}

.text {
    margin-top: 1.875rem;
    text-align: center;
    font-size: .8rem;
    font-weight: 400;
}

</style>


<script>
const labels = document.querySelectorAll('.form-control label')

labels.forEach(label => {
    label.innerHTML = label.innerText
        .split('')
        .map((letter, index) => `<span style="transition-delay:${index * 40}ms">${letter}</span>`)
        .join('')
})
</script>

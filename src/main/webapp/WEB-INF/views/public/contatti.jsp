<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/views/header.jsp">
    <jsp:param name="title" value="Contatti"/>
</jsp:include>

<div class="content backgroundImage">
    <section class="contatti">
    <div class="row">
        <h1> CONTATTI</h1>
    </div>

    <div class="contactsmain">
        <div class="contactsinfo">
            <div class="contactsaddress">
                <img src="${pageContext.request.contextPath}/images/addresslogo.png" alt="Address Icon">
                <div class="contactstitle">
                    La nostra Sede
                </div>
                <div>
                    Piazza Barone, 110<br>
                    24000 Roma
                </div>
            </div>
            <div class="contactsphone">
                <img src="${pageContext.request.contextPath}/images/phonelogo.png" alt="Phone Logo">
                <div class="contactstitle">
                    Chiamaci!
                </div>
                <div style="font-size: 30px">
                    335-789 6754
                </div>
            </div>
        </div>

        <div class="contactswrapper">

            <div class="contactstitle">
                Scrivici!
            </div>
            <form class="signup-form" action="./sendmailservlet" method="post">

                <label for="firstname" class="form-label">Nome</label>
                <div class="fullnamefield">
                    <input type="text" name="firstname" id="firstname" placeholder="Nome" required>
                    <input type="text" name="lastname" id="lastname" placeholder="Cognome" required>
                </div>

                <label for="email" class="form-label">Email</label>
                <div class="inputfield">
                    <input type="email" name="email" id="email" required>
                </div>

                <label for="reason" class="form-label">Motivo di contatto </label>
                <div class="inputfield">
                    <select name="reason" id="reason" required>
                        <option value="donazione">Vorrei fare una donazione</option>
                        <option value="adozione">Vorrei adottare un amico a quattro zampe</option>
                        <option value="volontario">Vorrei rendermi disponibile come volontario</option>
                        <option value="altro">Altro</option>
                    </select>
                </div>

                <label for="dettagli">Dettagli (opzionale):</label>
                <div class="inputfield">
                    <textarea id="dettagli" class="contactstextarea" name="dettagli" rows="10" cols="50" maxlength="250"></textarea>
                </div>

                <div class="buttonrow">
                    <input class="signupsubmit" type="submit" value="Iscriviti">
                    <input class="signupreset" type="reset" value="Reset">
                </div>
            </form>
        </div>
    </div>

    </section>
</div>
<script>
    function ValidateEmail(inputText) {
        let email = document.forms["contacts"]["email"].value;
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if (mailformat.test(email)) {
            return true;
        } else {
            alert("Formato email non valido")
            return false;
        }
    }
</script>


<jsp:include page="/WEB-INF/views/footer.jsp"/>
<script src="https://www.google.com/recaptcha/api.js?render=[[+site_key]]&hl=[[++cultureKey]]"></script>
<input type="hidden" name="[[+token_key]]">
<input type="hidden" name="[[+action_key]]" value="[[+form_id]]">
<script>
function getReCaptcha[[+form_id]](){ 
    grecaptcha.ready(function() {
        grecaptcha.execute('[[+site_key]]', {action: '[[+form_id]]'}).then(function(token) {
            document.querySelector('[name="[[+token_key]]"]').value = token;
        });
    });
}
getReCaptcha[[+form_id]](); 
setInterval(function(){ getReCaptcha[[+form_id]](); }, 2 * 60 * 1000);      
</script>
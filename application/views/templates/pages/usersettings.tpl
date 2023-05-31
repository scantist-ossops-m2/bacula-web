{extends file='default.tpl'}

{block name=title}
    <title>Bacula-Web - {t}User settings{/t}</title>
{/block}

{block name=body}
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">
                <h3 class="mt-3 mb-0">{t}User settings{/t}</h3>
                <hr>
            </div>
        </div>

        <div class="row">
            <div class="col col-xs-6">

                <h4>User details</h4>

                <form action="/user" method="post">
                    <div class="mb-3">
                        <label class="form-label" for="inputUsername">Username</label>
                        <input name="username" value="{$username}" type="text" id="inputUsername" class="form-control"
                               placeholder="Username" aria-describedby="username_helpblock" disabled>
                        <div id="username_helpblock" class="form-text">Username can't be changed</div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label" for="inputEmail">Email</label>
                        <input name="email" value="{$email}" type="email" id="inputEmail" class="form-control"
                               placeholder="Email address" readonly>
                        <div id="email_helpblock" class="form-text">This will come in a next version ;)</div>
                    </div>

                    <button class="btn btn-sm btn-primary pull-right" disabled="disabled" type="submit">Update</button>
                </form>

            </div>
        </div>

        <div class="row">
            <div class="col col-xs-4 mt-3">

                <h4>Password management</h4>

                <form action="/user" method="post" data-toggle="validator">
                    <div class="form-group">
                        <label for="currentpass">Current password</label>
                        <input name="oldpassword" type="password" id="oldpassword" class="form-control"
                               placeholder="Current password" aria-describedby="currentpass" required>
                        <span id="currentpass" class="help-block">Your current password (required)</span>

                        <label for="newpass">New password</label>
                        <input name="newpassword" type="password" id="inputpassword" class="form-control"
                               placeholder="New password" data-minlength="6" required>
                        <div class="form-text">Password must be at least 6 characters</div>
                        <label for="inputUsername">Confirm</label>
                        <input name="confnewpassword" value="" type="password" data-minlength="6"
                               data-match="#inputpassword" data-match-error="Passwords don't match"
                               id="inputconfpassword" class="form-control" placeholder="Confirm new password" required>

                        <input type="hidden" name="action" value="passwordreset">

                        <br/>
                        <button class="btn btn-sm btn-primary pull-right" type="submit">Reset password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
{/block}
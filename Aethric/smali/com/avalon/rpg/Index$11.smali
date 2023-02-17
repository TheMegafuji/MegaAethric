.class Lcom/avalon/rpg/Index$11;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->signInSilently()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/avalon/rpg/Index$11;->this$0:Lcom/avalon/rpg/Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 708
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "orna.signin"

    const-string v0, "silent.success"

    .line 709
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object p1, p0, Lcom/avalon/rpg/Index$11;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    iput-object v0, p1, Lcom/avalon/rpg/Index;->signedInAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 711
    iget-object p1, p0, Lcom/avalon/rpg/Index$11;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "javascript:(window.appinterface)?window.appinterface.googleGamesConnected():undefined"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 712
    iget-object p1, p0, Lcom/avalon/rpg/Index$11;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/avalon/rpg/Index;->access$200(Lcom/avalon/rpg/Index;)V

    :cond_0
    return-void
.end method

.class Lcom/avalon/rpg/Index$7;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;

.field final synthetic val$purchase:Lcom/android/billingclient/api/Purchase;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    iput-object p2, p0, Lcom/avalon/rpg/Index$7;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonObject;)V
    .locals 2

    const-string p1, "javascript:window.appinterface.unblockUI()"

    if-nez p2, :cond_0

    .line 414
    iget-object p2, p0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p2}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "orna.billing.apiresult"

    .line 419
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "success"

    .line 426
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "uuid"

    .line 427
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/avalon/rpg/Index$7;->val$purchase:Lcom/android/billingclient/api/Purchase;

    .line 430
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    .line 431
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p2

    .line 433
    new-instance v0, Lcom/avalon/rpg/Index$7$1;

    invoke-direct {v0, p0, p1}, Lcom/avalon/rpg/Index$7$1;-><init>(Lcom/avalon/rpg/Index$7;Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p1}, Lcom/avalon/rpg/Index;->access$100(Lcom/avalon/rpg/Index;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string p1, "message"

    .line 453
    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Could not complete order"

    .line 459
    :goto_0
    iget-object p2, p0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 460
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 422
    :catch_1
    iget-object p2, p0, Lcom/avalon/rpg/Index$7;->this$0:Lcom/avalon/rpg/Index;

    invoke-static {p2}, Lcom/avalon/rpg/Index;->access$000(Lcom/avalon/rpg/Index;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 410
    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/avalon/rpg/Index$7;->onCompleted(Ljava/lang/Exception;Lcom/google/gson/JsonObject;)V

    return-void
.end method

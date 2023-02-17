.class Lcom/avalon/rpg/Index$6$1;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index$6;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avalon/rpg/Index$6;

.field final synthetic val$serializedDetails:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index$6;Lorg/json/JSONObject;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/avalon/rpg/Index$6$1;->this$1:Lcom/avalon/rpg/Index$6;

    iput-object p2, p0, Lcom/avalon/rpg/Index$6$1;->val$serializedDetails:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/avalon/rpg/Index$6$1;->this$1:Lcom/avalon/rpg/Index$6;

    iget-object v0, v0, Lcom/avalon/rpg/Index$6;->val$webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: void(window.appinterface.addSkuDetails(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avalon/rpg/Index$6$1;->this$1:Lcom/avalon/rpg/Index$6;

    iget-object v2, v2, Lcom/avalon/rpg/Index$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/avalon/rpg/Index$6$1;->val$serializedDetails:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

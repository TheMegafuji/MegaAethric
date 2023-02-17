.class Lcom/avalon/rpg/Index$6;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avalon/rpg/Index;->getSKUDetails(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avalon/rpg/Index;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/avalon/rpg/Index;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/avalon/rpg/Index$6;->this$0:Lcom/avalon/rpg/Index;

    iput-object p2, p0, Lcom/avalon/rpg/Index$6;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/avalon/rpg/Index$6;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 353
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 354
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "price"

    .line 357
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "productId"

    .line 358
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "originalPrice"

    .line 359
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getOriginalPrice()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 361
    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sku query error"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_1
    iget-object p2, p0, Lcom/avalon/rpg/Index$6;->this$0:Lcom/avalon/rpg/Index;

    new-instance v1, Lcom/avalon/rpg/Index$6$1;

    invoke-direct {v1, p0, v0}, Lcom/avalon/rpg/Index$6$1;-><init>(Lcom/avalon/rpg/Index$6;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/avalon/rpg/Index;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

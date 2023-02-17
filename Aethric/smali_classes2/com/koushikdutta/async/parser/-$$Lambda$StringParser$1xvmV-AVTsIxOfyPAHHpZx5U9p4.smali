.class public final synthetic Lcom/koushikdutta/async/parser/-$$Lambda$StringParser$1xvmV-AVTsIxOfyPAHHpZx5U9p4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/parser/StringParser;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/parser/StringParser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/parser/-$$Lambda$StringParser$1xvmV-AVTsIxOfyPAHHpZx5U9p4;->f$0:Lcom/koushikdutta/async/parser/StringParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/-$$Lambda$StringParser$1xvmV-AVTsIxOfyPAHHpZx5U9p4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/parser/-$$Lambda$StringParser$1xvmV-AVTsIxOfyPAHHpZx5U9p4;->f$0:Lcom/koushikdutta/async/parser/StringParser;

    iget-object v1, p0, Lcom/koushikdutta/async/parser/-$$Lambda$StringParser$1xvmV-AVTsIxOfyPAHHpZx5U9p4;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/parser/StringParser;->lambda$parse$0$StringParser(Ljava/lang/String;Lcom/koushikdutta/async/ByteBufferList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

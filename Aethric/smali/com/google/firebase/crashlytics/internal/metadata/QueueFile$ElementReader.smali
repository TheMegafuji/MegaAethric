.class public interface abstract Lcom/google/firebase/crashlytics/internal/metadata/QueueFile$ElementReader;
.super Ljava/lang/Object;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/metadata/QueueFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ElementReader"
.end annotation


# virtual methods
.method public abstract read(Ljava/io/InputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

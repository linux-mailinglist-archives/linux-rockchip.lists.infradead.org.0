Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F019182143
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 19:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7KsrG4OPnSSKzMs6RHUGrbPWa4COo8WjgO0ebQxvKw=; b=KRokr6ro2F5Y/7
	ZcMUO4r+J6k50E3tFY/CGOvGt8Ujgip4MqrItvVuxj9n6+cpUkmaExgkNzpakyotKa/o127z6DRhA
	oCGFLsj7kNOydXfQrWr7g0pbEBXgKLrVT1IFR7IAhNNu39Xt0kw4QyB4eW7qMMXnefgwr6vIgkvWI
	zIcOtFqJKw6vLH0+0gkQmZgU1s3MP4z7oAMAKRcuhRZ5elxAXzUhlhQQg1z7QT54K9UGTJQuBrmGP
	/mDFVH73rVmf+A/LXcD/Hadm2s+wEJfnb9ogjzMD1EAKrPYKGoqE/W+nANJJsJGZiYUaE+yaVK9M0
	w9piiHr26Xvl7KavvIHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6UE-0001nP-RP; Wed, 11 Mar 2020 18:53:46 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6UB-0001m3-Hn
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 18:53:45 +0000
Received: by mail-qk1-x741.google.com with SMTP id f28so3117455qkk.13
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2020 11:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=/dNPHeH2JZmJ2dMMclVWXH5FnCXDvSk9raw7HY/zLIQ=;
 b=ygDsOdtY6QApFOfgyPzrx2YcP1OlBPCDu+mbKNx62lxfET7c++bIcIv7VAPT7xD+AM
 HBLi/TBK9SQzFp6tSZ1apwYr4NEZtIjQKrVdleubLxSXTK9HiMiJ6OTmZt3eDFFoy9Mo
 66tCLtaGGmTijrMelKjuDHFOas9Rl6fYaBH5AfQR8a4FgZAx8dUSt0aGPAfgkn/4FDL7
 eKhzvpKLREUjx5S1Hh3hSJakrnOsra+GKMUeE510a9zYDWmO3GmJYrD6U5m2cewGd7N/
 SkzHDu/3OQzW47rJkLahb0aKEACA0ITGxh1SMrT0N5r3CvGCNeggcird9UZZBL4QWxDg
 mEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/dNPHeH2JZmJ2dMMclVWXH5FnCXDvSk9raw7HY/zLIQ=;
 b=HOgfESUNvj2SYQx21fXLw2xayqaTiVrU5TuwcJfBmG3yKZGS3YmpsjYsj7sTidsRLN
 jCuARLLxVFprBPEwZfIwtZdiMbvru/Tk+H2ei84h7ipIUhbzto1yjGgNRiVZYMa076Ts
 gIoEU3YWaL6FdIxFR7YPIxErtwT2fWbHkBZ6VfnxFpngiiYfl4ptYsbx5YT1feG7ax+n
 rAdZqewaylEbLLpRLZ7jL4I7U1qhUx4xOtxQrEDHaXT9owvNnUOo3bN6+jUGKemMIm7f
 qsvWSYd+4+HMgrsFSC+egaVen/OC4Pu1rjRD3CL8jukmDofoZjaGa9Ru/kWXkpXxqEQp
 njqw==
X-Gm-Message-State: ANhLgQ3RAvtXU1pcHwzQUlGZVJYLOz8oEuE2fjwkIRyTFTRxIpx7DgDE
 6/opdxkcCPdKee5Lx7pZyA3s6w==
X-Google-Smtp-Source: ADFU+vtD1QK3Nnp06tnpyor3kMVvaCQ5Li6lEy6jtxXZyL53FFKlmeks+gc5PIIA+MN2WNDram2iHA==
X-Received: by 2002:a37:b304:: with SMTP id c4mr4250035qkf.348.1583952820524; 
 Wed, 11 Mar 2020 11:53:40 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2610:98:8005::527])
 by smtp.gmail.com with ESMTPSA id f13sm21354104qkm.42.2020.03.11.11.53.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 11:53:39 -0700 (PDT)
Message-ID: <7b0e33f9c66dd87904b787218389c3d639f7469a.camel@ndufresne.ca>
Subject: Re: [PATCH 1/6] v4l2-mem2mem: return CAPTURE buffer first
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 11 Mar 2020 14:53:37 -0400
In-Reply-To: <20200311174300.19407-2-ezequiel@collabora.com>
References: <20200311174300.19407-1-ezequiel@collabora.com>
 <20200311174300.19407-2-ezequiel@collabora.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_115343_646372_F45BDB61 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWVyY3JlZGkgMTEgbWFycyAyMDIwIMOgIDE0OjQyIC0wMzAwLCBFemVxdWllbCBHYXJjaWEg
YSDDqWNyaXQgOgo+IFdoZW4gdGhlIHJlcXVlc3QgQVBJIGlzIHVzZWQsIHR5cGljYWxseSBhbiBP
VVRQVVQgKHNyYykgYnVmZmVyCj4gd2lsbCBiZSBwYXJ0IG9mIGEgcmVxdWVzdC4gQSB1c2Vyc3Bh
Y2UgcHJvY2VzcyB3aWxsIGJlIHR5cGljYWxseQo+IGJsb2NrZWQsIHdhaXRpbmcgb24gdGhlIHJl
cXVlc3QgZmlsZSBkZXNjcmlwdG9yLgo+IAo+IFJldHVybmluZyB0aGUgT1VUUFVUIChzcmMpIGJ1
ZmZlciB3aWxsIHdha2UtdXAgc3VjaCBwcm9jZXNzZXMsCj4gd2hvIHdpbGwgaW1tZWRpYXRlbHkg
YXR0ZW1wdCB0byBkZXF1ZXVlIHRoZSBDQVBUVVJFIGJ1ZmZlciwKPiBvbmx5IHRvIGZpbmQgaXQn
cyBzdGlsbCB1bmF2YWlsYWJsZS4KPiAKPiBUaGVyZWZvcmUsIGNoYW5nZSB2NGwyX20ybV9idWZf
ZG9uZV9hbmRfam9iX2ZpbmlzaCByZXR1cm5pbmcKPiB0aGUgQ0FQVFVSRSAoZHN0KSBidWZmZXIg
Zmlyc3QsIHRvIGF2b2lkIHNpZ25hbGxpbmcgdGhlIHJlcXVlc3QKPiBmaWxlIGRlc2NyaXB0b3Ig
cHJlbWF0dXJlbHksIGkuZS4gYmVmb3JlIHRoZSBDQVBUVVJFIGJ1ZmZlciBpcyBkb25lLgo+IAo+
IFdoZW4gdGhlIHJlcXVlc3QgQVBJIGlzIG5vdCB1c2VkLCB0aGlzIGNoYW5nZSBzaG91bGQgaGF2
ZQo+IG5vIGltcGFjdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+CgpUaGlzIHdhcyB0ZXN0ZWQgd2l0aCB1cGNvbWluZyBHU3RyZWFt
ZXIgZWxlbWVudCB3aXRoIE9fTk9OQkxPQ0sgZmxhZyBwYXNzZWQgd2hlbgpvcGVuaW5nIHRoZSB2
aWRlbyBub2RlLiBCZWZvcmUgdGhpcyBjaGFuZ2UsIEVBR0FJTiB3b3VsZCBmcm9tIHRpbWUgdG8g
dGltZSBiZQpyZXR1cm5lZCB3aGVuIERRQlVGKENBUFRVUkUpIHdhcyBjYWxsZWQuCgogIGdzdC1s
YXVuY2gtMS4wIGZpbGVzcmMgbG9jYXRpb249c29tZWZpbGUubXA0ICEgcGFyc2ViaW4gISB2NGwy
c2xoMjY0ZGVjICEgZmFrZXZpZGVvc2luawogIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9uZHVmcmVzbmUvZ3N0LXBsdWdpbnMtYmFkLy0vYmxvYi92NGwyY29kZWNzLWhhbnRyby12My9z
eXMvdjRsMmNvZGVjcy9nc3R2NGwyZGVjb2Rlci5jI0wxMzkKClRlc3RlZC1ieTogTmljb2xhcyBE
dWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgZHJpdmVy
cy9tZWRpYS92NGwyLWNvcmUvdjRsMi1tZW0ybWVtLmMgfCAxMSArKysrKysrKysrLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYyBiL2RyaXZlcnMvbWVk
aWEvdjRsMi0KPiBjb3JlL3Y0bDItbWVtMm1lbS5jCj4gaW5kZXggODk4NmMzMTE3NmU5Li42MmFj
OTQyNGM5MmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1tZW0y
bWVtLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLW1lbTJtZW0uYwo+IEBA
IC01MDQsMTIgKzUwNCwyMSBAQCB2b2lkIHY0bDJfbTJtX2J1Zl9kb25lX2FuZF9qb2JfZmluaXNo
KHN0cnVjdAo+IHY0bDJfbTJtX2RldiAqbTJtX2RldiwKPiAgCj4gIAlpZiAoV0FSTl9PTighc3Jj
X2J1ZiB8fCAhZHN0X2J1ZikpCj4gIAkJZ290byB1bmxvY2s7Cj4gLQl2NGwyX20ybV9idWZfZG9u
ZShzcmNfYnVmLCBzdGF0ZSk7Cj4gIAlkc3RfYnVmLT5pc19oZWxkID0gc3JjX2J1Zi0+ZmxhZ3Mg
JiBWNEwyX0JVRl9GTEFHX00yTV9IT0xEX0NBUFRVUkVfQlVGOwo+ICAJaWYgKCFkc3RfYnVmLT5p
c19oZWxkKSB7Cj4gIAkJdjRsMl9tMm1fZHN0X2J1Zl9yZW1vdmUobTJtX2N0eCk7Cj4gIAkJdjRs
Ml9tMm1fYnVmX2RvbmUoZHN0X2J1Ziwgc3RhdGUpOwo+ICAJfQo+ICsJLyoKPiArCSAqIElmIHRo
ZSByZXF1ZXN0IEFQSSBpcyBiZWluZyB1c2VkLCByZXR1cm5pbmcgdGhlIE9VVFBVVAo+ICsJICog
KHNyYykgYnVmZmVyIHdpbGwgd2FrZS11cCBhbnkgcHJvY2VzcyB3YWl0aW5nIG9uIHRoZQo+ICsJ
ICogcmVxdWVzdCBmaWxlIGRlc2NyaXB0b3IuCj4gKwkgKgo+ICsJICogVGhlcmVmb3JlLCByZXR1
cm4gdGhlIENBUFRVUkUgKGRzdCkgYnVmZmVyIGZpcnN0LAo+ICsJICogdG8gYXZvaWQgc2lnbmFs
bGluZyB0aGUgcmVxdWVzdCBmaWxlIGRlc2NyaXB0b3IKPiArCSAqIGJlZm9yZSB0aGUgQ0FQVFVS
RSBidWZmZXIgaXMgZG9uZS4KPiArCSAqLwo+ICsJdjRsMl9tMm1fYnVmX2RvbmUoc3JjX2J1Ziwg
c3RhdGUpOwo+ICAJc2NoZWR1bGVfbmV4dCA9IF92NGwyX20ybV9qb2JfZmluaXNoKG0ybV9kZXYs
IG0ybV9jdHgpOwo+ICB1bmxvY2s6Cj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZtMm1fZGV2
LT5qb2Jfc3BpbmxvY2ssIGZsYWdzKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F11017B790
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 08:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMWag/qpWKc3j+iR18vkCDVNp1I26RE6+FBDxGvbR6k=; b=N8pY+iTZnWAjCH
	eM0/lHBr7nV8GJDhvc1wsLMJco1povGAdN4bPJp9dbKS32EAz5SMIjnyQVCHioSbaojyhsE4tacpq
	oPCpKhRjOp0myTCKPj2SnSMHbdRnfOZPJMhpb20SCdORibi7cQJg+a+tGU5e8esHbk+y9X9EbTdYk
	uUp+tk58CtwaMlXOQKwuhhPi3uZbWhRP5uLZGWeuz0Kbh2nqnWMpppysiBayVHGm4hUpERDRmRDWi
	QR46nwxEUlDntycAAdPFk4PRyh2APbVaWJe4xyuGq4+M8479nuCwHclDl1CYPPhFN/9i3k4OWXk27
	9NUQcNvfhFlyaYqcH8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7Zp-0007rD-Mz; Fri, 06 Mar 2020 07:39:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7Zl-0007qA-NX
 for linux-rockchip@lists.infradead.org; Fri, 06 Mar 2020 07:39:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id x7so1133594wrr.0
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2020 23:39:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4t0MStYbCBrrml5GUGnyfpLcvggg+PyXMPp39nd5trE=;
 b=RSzgjOlOMbBeZo2wbq6QANsYrtE15e1XNV26Ts8HIH6E8Rw5WjTotTFhcbQtTdeVEC
 lmWGNY4BYjMrmJ4GamktpINiM9bQtzsOKOjVuYcR54RQD+/Bfq+/Q6/V1LQuNxMpC9MB
 RZ7qKyV4+Nd9Zz3jW+pdhf8+QuafjSXhsD6RFbI/EnnQ5aD3ZhSMgXrkNPTQhoOzbG+f
 lGZtAUTkO1Iby6hmaxtTxeY1WaJVoYFb9+e8VGTGqcYF4UtMI+5j5hQuiYv3fxsMNEc+
 xFrvx8j1Mm0zQfzF3oLqtor+5FxUk6XVFYPVv2rLK0GfnxzxFgIlgWmJZR86wAMAoXXB
 nAjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4t0MStYbCBrrml5GUGnyfpLcvggg+PyXMPp39nd5trE=;
 b=OsVIAT5pYvlQcSEznbpFZpYTaie0LiByDiLtbwIEvXCp2kLpc0MdwFuALqXse+peMR
 TLYS/uKO46JLYUg4oH/KUIuo3HCgq12PkOfFoP0hVeIWD72vQmdPdFf7duZgc0a6z0nJ
 DH5j7Z+l4d3cHpcGYShypqxGoGRA7sVuSW/+BYM8GKIz8kfTjRI5bq/eCubYvt99n0LX
 wGJeElSasD+bDa0mScyDWigUP2V5e2nB0YYMjYWi8LFHu2IojEtYSSQRPMResedlu168
 C7H/wQaBWocHAmXjp1JXUO8Pl7G6T+cwO+/1wY9mZ0LPLeSoNZDgdSBixE6+FVr/RKRr
 ImJQ==
X-Gm-Message-State: ANhLgQ0NeT4Z+Cb49uMzh02lVUJl1vzZ3PVqBxdlysG8+V6Ae32+ff/I
 DeNO93H/eKgRVigAvx+obtU=
X-Google-Smtp-Source: ADFU+vsDky10qkg2759HPWADpen7Ug1SSZpzuiTDnR7oovqEmbuLwiN6yUtObGg2h/jiin3VPcHFbw==
X-Received: by 2002:adf:dfc2:: with SMTP id q2mr2501810wrn.209.1583480355596; 
 Thu, 05 Mar 2020 23:39:15 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j14sm48263537wrn.32.2020.03.05.23.39.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Mar 2020 23:39:15 -0800 (PST)
To: Heiko Stuebner <heiko@sntech.de>
References: <3739122.I207nbqjcC@phil>
Subject: Re: Re: [PATCH 4/4] arm64: dts: rockchip: Enable eDP display on
 rk3399 evb
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <88f23464-1868-464f-7e0b-c9cd1c12c9d5@gmail.com>
Date: Fri, 6 Mar 2020 08:39:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3739122.I207nbqjcC@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_233917_793217_14B572AA 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpNaXNzaW5nICNhZGRyZXNzLWNlbGxzLCAjc2l6ZS1jZWxscwpDYW4geW91IHN0aWxsIGZp
eCB0aGF0PwpBbHNvIGluY2x1ZGUgYWxsIGVtYWlsIGFkZHJlc3NlcyB0aGF0IGFyZSBwcm9kdWNl
ZCBieToKCi4vc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbCAtLW5vZ2l0LWZhbGxiYWNrIC0tbm9n
aXQKCj4gCj4gQW0gRG9ubmVyc3RhZywgNS4gTcOkcnogMjAyMCwgMTI6Mzk6MTIgQ0VUIHNjaHJp
ZWIgQW5keSBZYW46Cj4+IEFkZCBlRFAgcGFubGUgYW5kIGVuYWJsZSByZWxhdGl2ZSBkdCBub2Rl
IGxpa2Ugdm9wL2lvbW11Cj4+IHRvIGVuYWJsZSBlRFAgZGlzcGxheSBvbiByazMzOTkgZXZiLgo+
PiAKPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuIGF0IHJvY2stY2hpcHMuY29t
Pgo+IAo+IGFwcGxpZWQgZm9yIDUuNyAtIGFmdGVyIHJlbW92aW5nIHRoZSBhZGRlZCBibGFuayBs
aW5lIGF0IHRoZSBlbmQKPiBvZiB0aGUgZmlsZQo+IAo+IFRoYW5rcwo+IEhlaWtvCgoKCj4gKyZl
ZHAgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsJZm9yY2UtaHBkOwo+ICsKPiArCXBvcnRzIHsK
CiNhZGRyZXNzLWNlbGxzID0gPDE+Owojc2l6ZS1jZWxscyA9IDwwPjsKCkRvbid0IGZvcmdldCB0
aGF0IGV4dHJhIGVtcHR5IGxpbmUgaGVyZS4KCj4gKwkJZWRwX291dDogcG9ydCBhdCAxIHsKPiAr
CQkJcmVnID0gPDE+Owo+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkJI3NpemUtY2Vs
bHMgPSA8MD47Cj4gKwo+ICsJCQllZHBfb3V0X3BhbmVsOiBlbmRwb2ludCBhdCAwIHsKPiArCQkJ
CXJlZyA9IDwwPjsKPiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW5fZWRwPjsKPiAr
CQkJfTsKPiArCQl9Owo+ICsJfTsKPiArfTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

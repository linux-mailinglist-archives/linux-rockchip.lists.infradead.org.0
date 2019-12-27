Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E149B12B18F
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 06:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mVD6xLGO0qQ5G+aCYdgtcBmUxCtNMcUbUIlMWCxpNQ=; b=S3ie+R4/MMyg4M
	GFSaR17ibk67uF7usL+5SjDHzL1JNpMMpEFzAzGEV8ColHUlvnIgBgXJay7PnFT6ltauA7nHdtamt
	FSM4WyyUQIH71nZs6cRgwJ6aibWtETkGFTiTvGS0T9ia3eJQulPKBnftUKw2LUeenFl1tRUp2X7PS
	JDIwzu5375eTCDzdWvG7BXu4PLP8U48pZDCTgAIhTLh7P5aSMb12ykZMpV1gALb01Q5oz9RwCF5Q2
	whkNXLRczy0anvb9J63O5ecgFvkOPcvUHYh29IRBgHQkC5SGlprXTiiuRbW3JpkclH7TeMWxyryC/
	pykOVQ6HMXSzhEH12kvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikiap-00033i-HG; Fri, 27 Dec 2019 05:55:23 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikial-00032H-0G
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 05:55:20 +0000
Received: by mail-il1-x142.google.com with SMTP id z12so21659707iln.11
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Dec 2019 21:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+nijtKMWiNBPwffGMBe2wnVDWf1IvRYKvADOPaUTLNY=;
 b=lS2terFblUv5i9VYL5s51tG45RusT2S3RM+FlOQoKpS93lD0RHwB5tOFh89HavexP1
 HJWdeuHRYrEw6H8pAUwkMxOMuLJvo/kZfV+dBwPWBw9ALAOD8AjuOmLUHckv847DQ4Hf
 b211MOsuq3cqAAwphulTVqgDLHL59AcMPvpCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+nijtKMWiNBPwffGMBe2wnVDWf1IvRYKvADOPaUTLNY=;
 b=tJXZq4OVUOR3s7PtQKuwTVTM+Mtppd2EgLtEhi7NTer1Cwa24zl/HJYhB2PSUnR0Lo
 aILAqYSBq5Lx7MUoglzhPBh4CHY+iqOWvYaBzM6ujZywkpxA0A3C2xkXWHMMca62bdH3
 qU7Jxw2iZeinqOCZpNOp/bm0ekrZRa0hQPmNd4tsTL3CWJxcvvchD+9zks40WP7jpERY
 Ja9sgV0dsqncbKj9/8qRq8tFuiHVYhxFxxCAlHQTTfDQzzPml3Oanl4EwL6ysotr4Uxf
 J8QmXgFOgCkvstwejvbhlvQ/E4JYkPW3LD2A0wxEf4LVANt1yAyTu594ZjP4GOPXMgne
 quDQ==
X-Gm-Message-State: APjAAAXecwSbkqW8djmBnRwN8c0n+1Mxt4ak+woJ7yLnz2c5izioOJx7
 9L3Wk/GzXqobWvMjRGWj+gR2iHqzRLxePf7n96IlUw==
X-Google-Smtp-Source: APXvYqwTxowMrjfY65P9fOhA8oZlKJC9c2MjBVEX7Q/+dluaJtyVTF9+WSAbKJuIH4vvq5otPoD7Rk9gn9nlX6Jwoj8=
X-Received: by 2002:a92:354c:: with SMTP id c73mr18537997ila.61.1577426114623; 
 Thu, 26 Dec 2019 21:55:14 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-2-jagan@amarulasolutions.com>
 <9bec6335-455b-0c62-a68d-a470a3ccdc24@rock-chips.com>
In-Reply-To: <9bec6335-455b-0c62-a68d-a470a3ccdc24@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 27 Dec 2019 11:25:03 +0530
Message-ID: <CAMty3ZDNLNRue1OFAvPvo5oxJDwhLinA5GCSJJ7kwc08TOvdXA@mail.gmail.com>
Subject: Re: [PATCH 01/11] spi: rk: Limit transfers to (64K - 1) bytes
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_215519_198282_AB697FC7 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMjMsIDIwMTkgYXQgODowMCBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+Cj4gT24gMjAxOS8xMi8yMSDkuIvljYgzOjU0LCBKYWdh
biBUZWtpIHdyb3RlOgo+ID4gVGhlIFJvY2tjaGlwIFNQSSBjb250cm9sbGVyJ3MgbGVuZ3RoIHJl
Z2lzdGVyIG9ubHkgc3VwcG9ydHMgMTYtYml0cywKPiA+IHlpZWxkaW5nIGEgbWF4aW11bSBsZW5n
dGggb2YgNjRLaUIgKHRoZSBDVFJMUjEgcmVnaXN0ZXIgaG9sZHMgImxlbmd0aCAtCj4gPiAxIiku
IFRyeWluZyB0byB0cmFuc2ZlciBtb3JlIHRoYW4gdGhhdCAoZS5nLiwgd2l0aCBhIGxhcmdlIFNQ
SSBmbGFzaAo+ID4gcmVhZCkgd2lsbCBjYXVzZSB0aGUgZHJpdmVyIHRvIGhhbmcuCj4gPgo+ID4g
Tm93LCBpdCBzZWVtcyB0aGF0IHdoaWxlIHRoZW9yZXRpY2FsbHkgd2Ugc2hvdWxkIGJlIGFibGUg
dG8gcHJvZ3JhbQo+ID4gQ1RSTFIxIHdpdGggMHhmZmZmLCBhbmQgZ2V0IGEgNjRLaUIgdHJhbnNm
ZXIsIGJ1dCB0aGF0IGFsc28gc2VlbXMgdG8KPiA+IGNhdXNlIHRoZSBjb3JlIHRvIGNob2tlLCBz
byBzdGljayB3aXRoIGEgbWF4aW11bSBvZiA2NEsgLSAxIGJ5dGVzIC0tCj4gPiBpLmUuLCAweGZm
ZmYuCj4gPgo+ID4gTm90ZSwgdGhhdCB0aGUgc2l6ZSBpcyBmdXJ0aGVyIGRpdmlkZWQgaW50byAn
bWludXMgMScgd2hpbGUgd3JpdGluZwo+ID4gaW50byBDVFJMUjEuCj4gPgo+ID4gVGhpcyBjaGFu
Z2UgZml4ZWQgdHdvIGRpZmZlcmVudCByZWFkIGlzc3VlcywKPiA+Cj4gPiAxLiBzZiByZWFkIGZh
aWx1cmUgd2hlbiB3aXRoID4gMHgxMDAwMAo+ID4KPiA+IDIuIEJvb3QgZnJvbSBTUEkgZmxhc2gg
ZmFpbGVkIGR1cmluZyBzcGlfZmxhc2hfcmVhZCBjYWxsIGluCj4gPiAgICAgY29tbW9uL3NwbC9z
cGxfc3BpLmMKPiA+Cj4gPiBPYnNlcnZlZCBhbmQgVGVzdGVkIGluCj4gPiAtIFJvY2twcm82NCB3
aXRoIEdpZ2FkZXZpY2UgZmxhc2gKPiA+IC0gUk9DLVJLMzM5OS1QQyB3aXRoIFdpbmJvbmQgZmxh
c2gKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRp
b25zLmNvbT4KPgo+IFJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hp
cHMuY29tPgoKQXBwbGllZCB0byB1LWJvb3Qtc3BpL21hc3RlcgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C391D15DAB
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 08:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzcijM9kEx0ZoK8FYXTMk6SiIibDkuLpIOhtJnmRgAQ=; b=XDo0Dw5Kj/8lSl
	TDttnALIENNy3YSDek4FGKjfHFl2RO8mBf27vF+5o6+CmkYBtpi0gWwIi+ncxa1EHCE6NnCJy9eqZ
	V/QGyydTXVy1WeNfY5O1bOo4hXb4vX/5kI2yLa5EeHI096+FxvT+GftQyDZP98w3FYe+dFcrJXoj7
	KThT+xzdT9Dz9YnzfNn6LnUig6lpLOgnU6+92bpakEz6bkPhPHVvYRBNBTPYMOhyOgBcifoNGRRvr
	Xm+LwC+QQIX3KPmMkqAkJ1GaNmB3u5VkL0bLO8CFCQrB+DYOvBuFyQTgrNuCO6tAieTYJ9i/9+Zxg
	U2hLUKxWxOgbdBBS308A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtqF-0004hN-CN; Tue, 07 May 2019 06:44:43 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtqD-0004h0-4f
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 06:44:42 +0000
Received: by mail-it1-x141.google.com with SMTP id q132so9387718itc.5
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 23:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=By41nGD6xveWlNvxQQFGjSqr8PxY6L0kpycE7Y8zUlk=;
 b=kx7uxnCrrArZNVHussp+Qez2PYlwhPzmTX75X57+1oDnOUvkfcLVLb1YAl5OUusD5P
 JPl/I2ri6DnfzmqLHMZnkYbrMZGToPy4MO00u+7qCL5s7lMnkV6lE/I2CK8EfBu2775d
 YuURWEkpwjLP+VNHdkDJaCme2NiVbFlbSdbWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=By41nGD6xveWlNvxQQFGjSqr8PxY6L0kpycE7Y8zUlk=;
 b=g3cBTbFx7Yl96ojExE4EW1EeI0Cherof217Bl3cTHx3oGbZ2BzkBSnxw+uQKIxCQ1E
 G983RurkwfZ8fVpWxVDttC09g4/CA/3t7gEiZqJHeZwD7GTr2lWHITrU6MQQSdF55gMk
 3onK+a4wVz5PlK5YeluaT7zm8jmKhdTqCfERvVWqwi5JHfL1Rj4SCwxW5PyKh5Q2ucDK
 n6aABcqu6ENR9lO3dvgRjceLMx/WwI9h1Lpuql+faOt4HCnshMj/ko9GynXLRJoRD46E
 3kzI36AWFsoatmQHl97GpuCdJsaKqTdQ8Wiuzp8Ft0OaIu6VnqPo3P0YN4QommKFCO1w
 FBpg==
X-Gm-Message-State: APjAAAWmvbnuGhe50beABoQY9euxmrv0l+2HPeyYdyyOJgpKKFWWliKV
 FXS1Jtm3G92dFaObBxtbQAmuMgVWsHtpetcLnzT2eQ==
X-Google-Smtp-Source: APXvYqy/7ayHZJ64xa1FkebqdmS1puIPuylz7POPpSWFHQ8zSr9HWHA10jrZPNbAClBTfN1i1pbTl484WKRo4rWLHLg=
X-Received: by 2002:a24:cec3:: with SMTP id
 v186mr22145887itg.173.1557211480153; 
 Mon, 06 May 2019 23:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190428090913.10568-1-jagan@amarulasolutions.com>
 <20190428090913.10568-8-jagan@amarulasolutions.com>
 <52ca4f72-fa9c-487a-eb10-a509b5e72539@rock-chips.com>
In-Reply-To: <52ca4f72-fa9c-487a-eb10-a509b5e72539@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 7 May 2019 12:14:28 +0530
Message-ID: <CAMty3ZBGp-b5rbHiMrFMWzu5Doen_h=2B3sxx_qZtL2SN8Vo8Q@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] Makefile.spl: Create u-boot-spl-rockchip.bin for
 rk3399
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234441_186119_5ED3E9DF 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Tom Rini <trini@konsulko.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCAxMjowNCBQTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIEphZ2FuLAo+Cj4gT24gMDQvMjgvMjAxOSAwNTow
OSBQTSwgSmFnYW4gVGVraSB3cm90ZToKPiA+IFJvY2tjaGlwIHBsYXRmb3JtIHdvdWxkIHJlcXVp
cmUgYW4gZXhwbGljaXQgY2FsbCB0byBta2ltYWdlIGZvcgo+ID4gY3JlYXRpbmcgYm9vdGFibGUg
aW1hZ2VzIHdoaWNoIGluZGVlZCBzcGVjaWZpYyB0byBTb0MgZmFtaWx5Cj4gPiBhbG9uZyB3aXRo
IGJvb3QgZGV2aWNlcy4KPiA+Cj4gPiBFeGFtcGxlIG9mIGNyZWF0aW5nIGJvb3RhYmxlIGltYWdl
IGZvciByazMzOTkgZmFtaWx5IHdpdGggU0QKPiA+IGJvb3QgZGV2aWNlIGFzCj4gPgo+ID4g4oK5
IG1raW1hZ2UgLW4gcmszMzk5IC1UIHJrc2QgLWQgLi9zcGwvdS1ib290LXNwbC1kdGIuYmluIHUt
Ym9vdC1zcGwtcm9ja2NoaXAuYmluCj4gPgo+ID4gVGhpcyBwYXRjaCB3b3VsZCBkbyB0aGUgc2Ft
ZSB0aGluayB2aWEgTWFrZWZpbGUuc3BsIGZvciByazMzOTkuCj4gPgo+ID4gVGhpcyB3b3VsZCBi
ZSBhbiBpbml0aWFsIHZlcnNpb24gYW5kIGl0IGNhbiBlYXNpbHkgZXhwYW5kIGZ1cnRoZXIgdG8g
c3VwcG9ydAo+ID4gb3RoZXIgZmFtaWxpZXMgb2YgU29DJ3Mgd2l0aCB2YXJpZXR5IG9mIGJvb3Qg
c3RhZ2VzIGxpa2UgVFBMLCBTUEwuCj4KPiAgICAgcmszMzk5IG1heSBoYXZlIFRQTCBsaWtlIG90
aGVyIFNvQ3MsIGZvciB0aGVyZSB3aWxsIGJlIGltYWdlIHR5cGVzOgo+Cj4gU1BMK3UtYm9vdC5i
aW4KPgo+IFNQTCt1LWJvb3QuaXRiCj4KPiBUUEwrU1BMK3UtYm9vdC5pdGIKPgo+IFNlZW1zIHRo
aXMgcGF0Y2ggYW5kIDkvOSBvZiB0aGlzIHBhdGNoIHNldCBvbmx5IGNvdmVyIFNQTCt1LWJvb3Qu
aXRiPwo+Cj4gSXMgaXQgcG9zc2libGUgdG8gbWFrZSBpdCBtb3JlIGdlbmVyaWM/CgpZZXMsIEkg
aGF2ZSB3YXRjaGVkIHlvdXIgVFBMIGNoYW5nZXMuIGFuZCB3ZSBjYW4gZXh0ZW5kIHRoaXMgdG8K
c3VwcG9ydCBUUEwgdG8gbWFrZSBjb21iaW5hdGlvbiBvZiBhbGwgaW1hZ2VzLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EAD1EE765
	for <lists+linux-rockchip@lfdr.de>; Thu,  4 Jun 2020 17:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sInveow1min7Oz/SKD2IKzWI3uzb+OZhnxtZ0lq8ZE4=; b=ZRdXAdjnTKrSju
	1PKPArbYYV30Jw3rT/G+YmhpFwt+3z/gCDDGhHjAofIqf1GnfAg6zT29mlwF1BHdFZJj3bAYF5Ski
	Z1Q79a2XzHgkqQ7Ip+yavIVNQz9nKcyh8kJrXqghfoXUZjeEbIvkWVzTTdqudmFOckwIJUSvjFVwl
	Xg6jrfqaADMW6SGcy6MXVAADE92b9Vf5JDbG/5iGsXG4V8K+CGUApDixWwC1/6Dkuy9uzD1+4DbjA
	JfeOqhBBPtn8ijGKFEt6BpQ4xvgfNzE0pl9eqQmWgBfE/sDMlncUpW2WCQwYxut+h+RxVXLKFB+ix
	9MWnNoOAgiAj3JjgKs7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrUL-0000Qc-NT; Thu, 04 Jun 2020 15:09:01 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgrUG-0000OT-To
 for linux-rockchip@lists.infradead.org; Thu, 04 Jun 2020 15:08:59 +0000
Received: by mail-ej1-x643.google.com with SMTP id q19so6486535eja.7
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2020 08:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kH2mvsSIzzTDpFgGsY88IPY1+bFLIry/aVa7+RKd634=;
 b=B6W/Yx7j2f7MHnPZ2jnEqhZLI60Tf0d0EboR3pXVEuMW0+e5uuiiw7D6E2leV/R+cc
 V1BjwKro5DNN25OElKxhtjAaZB92L9hxPaFtVzt0Fnt2N1vhDObdDPRD1VRduuB7Xh52
 k2EE+kd3E4TCvzYVdAUH652JAu+EfaA+nSXb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kH2mvsSIzzTDpFgGsY88IPY1+bFLIry/aVa7+RKd634=;
 b=K5LOhmSQb4AKeSM0iYQxBjSrKoi+EN5RJSWwNV8yFP/i9MI/SHiVcdfeYxpeunA3no
 Q9NFBQaMISz/L2p4TP1h3PT/5UtCWUOTZMVTXI6+ot9HZkL9FFnp4iCyqqlcMP/QErb7
 WXWoOh6Ux+4XcXR/Nvqs/ij32H/eq8cksCLnsXT9eFedu4VVsXwCE0RBhFXzAvQfKlTD
 jWmeVOpNjxMRp0chnw0URjFOe41LstYjJY3kobbT4BWrZMKNMSIKptXIBjqoUwnrazVO
 +gw0ZBeG92RPtIRGAG2/lzFuNMt8RTY10HYMR5Xw82mEnflzdgmn1EGQlAxKdBX2qxJK
 zILg==
X-Gm-Message-State: AOAM532DsJqbKSuRDr9N6iYqiR5MdtYaQKBUyBS7pEnTUfiYBNupuLhE
 EQ8PULCMQNPJOMTVwWAaz/zSdiT26Aqt+Sy3qtxFTQ==
X-Google-Smtp-Source: ABdhPJxGyJw1UlSWGtbNm8FezlTYQlJwcEZ1R8GpLEVkVElyxiXMH/Ka40AUPC+UAmZyq/sE6N3Oxg5tXWpl0Oc5Tdo=
X-Received: by 2002:a17:906:470c:: with SMTP id
 y12mr4388423ejq.336.1591283335281; 
 Thu, 04 Jun 2020 08:08:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200604145141.356702-1-jagan@amarulasolutions.com>
 <20200604145141.356702-2-jagan@amarulasolutions.com>
 <56A28F79-EB4C-4091-A72D-F4CDF3B0F60F@theobroma-systems.com>
In-Reply-To: <56A28F79-EB4C-4091-A72D-F4CDF3B0F60F@theobroma-systems.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 4 Jun 2020 20:38:43 +0530
Message-ID: <CAMty3ZBSx3BYWMC1F2Ja3P8S=HP93gkyb50wmKwLEWvuwCed6Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] Makefile: Drop to handle rkspi image type
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_080857_413911_F76BF20A 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>,
 =?UTF-8?Q?Christoph_M=C3=BCllner?= <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gNCwgMjAyMCBhdCA4OjI1IFBNIFBoaWxpcHAgVG9tc2ljaAo8cGhpbGlwcC50
b21zaWNoQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gPiBPbiAwNC4wNi4y
MDIwLCBhdCAxNjo1MSwgSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdy
b3RlOgo+ID4KPiA+IE9uIHJvY2tjaGlwIHBsYXRmb3JtcywgU1BJIGJvb3QgaW1hZ2UgY3JlYXRp
b24gaXMgbm90Cj4gPiBzdHJhaWdodGZvcndhcmQgbGlrZSBNTUMgYm9vdCBpbWFnZSBjcmVhdGlv
biB3aGVyZSBmb3JtZXIKPiA+IHJlcXVpcmVzIHRvIHNwZWNpZnkgdHBsLCBzcGwgaW4gbXVsdGlt
YWdlIGZvcm1hdCBpbiBta2ltYWdlLAo+ID4gYW5kIGxhdGVyIHNpbXBseSBkbyBhIGNvbmNhdGVu
YXRlIG1raW1hZ2VkLXRwbCB3aXRoIHNwbC4KPiA+Cj4gPiBPbiB0aGlzIG5vdGUsIGxldCBkcm9w
IHJrc3BpIGltYWdlIHR5cGUgY3JlYXRpb24gdmlhIGtidWlsZAo+ID4gYW5kIGxldCBpbmZvcm0g
dmlhIHJvY2tjaGlwLnJzdAo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2Fu
QGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gPiAtLS0KPiA+IENoYW5nZXMgZm9yIHYzOgo+ID4gLSBu
b25lCj4gPgo+ID4gTWFrZWZpbGUgfCAxMSArKy0tLS0tLS0tLQo+ID4gMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvTWFr
ZWZpbGUgYi9NYWtlZmlsZQo+ID4gaW5kZXggMzg1MWRkOWZhMC4uZGIzYjZiOTk5MSAxMDA2NDQK
PiA+IC0tLSBhL01ha2VmaWxlCj4gPiArKysgYi9NYWtlZmlsZQo+ID4gQEAgLTE0MzgsMjIgKzE0
MzgsMTUgQEAgdS1ib290LXdpdGgtc3BsLmJpbjogJChTUExfSU1BR0UpICQoU1BMX1BBWUxPQUQp
IEZPUkNFCj4gPgo+ID4gaWZlcSAoJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkseSkKPiA+Cj4gPiAt
IyByb2NrY2hpcCBpbWFnZSB0eXBlCj4gPiAtaWZlcSAoJChDT05GSUdfU1BMX1NQSV9MT0FEKSx5
KQo+ID4gLVJPQ0tDSElQX0lNR19UWVBFIDo9IHJrc3BpCj4gPiAtZWxzZQo+ID4gLVJPQ0tDSElQ
X0lNR19UWVBFIDo9IHJrc2QKPiA+IC1lbmRpZgo+Cj4gVGhpcyBzaG91bGQgbm90IGJlIGVpdGhl
ci1vciwgYnV0IHJhdGhlciBhbGxvdyB0aGUgY3JlYXRpb24gb2YgYm90aCBhIFNQSSBhbmQgU0Qv
ZU1NQyBpbWFnZQo+IGZvciBhIHBsYXRmb3JtLCBpZiBzbyBkZXNpcmVkIOKAlCBlLmcuIHRoZSBS
SzMzOTktUTcgc3VwcG9ydHMgYm90aCBTUEkgYW5kIGVNTUMgYm9vdCBhbmQgaXQKPiBpcyBhIHVz
ZXItY2hvaWNlIHdoaWNoIGxvY2F0aW9uIHdpbGwgYmUgdXNlZCBmb3IgdGhlIGJvb3Rsb2FkZXIu
Cj4KPiBJbiBvdGhlciB3b3JkczogbWFrZSB0aGlzIGEg4oCcY2hlY2tib3jigJ0gb3B0aW9uIGlu
IEtjb25maWcgYW5kIG91dHB1dCBhIHJrc3BpLCBhIHJrc2Qgb3IgYm90aAo+IGltYWdlcyBkZXBl
bmRpbmcgb24gd2hhdCBpcyBzZWxlY3RlZC4KCkFncmVlIG9uIHRoZSBwb2ludCB0aGF0IHRoZSBi
dWlsZCBjYW5ub3QgY3JlYXRlIGltYWdlcyB3aGVuIFNQSSBvcgpib3RoIFNQSS9NTUMgZW5hYmxl
ZC4gSSBkbyBoYXZlIGEgcGF0Y2ggdG8gdGFrZSBjYXJlIG9mIHRoYXQgYnV0IHRoZQpTUEkgYm9v
dCBpbWFnZSBjcmVhdGlvbiBpbiBUUEwtZmxvdyBzZWVtcyBub3QgYnVpbGRpbmcgdmlhIE1ha2Vm
aWxlLgoKLi90b29scy9ta2ltYWdlIC1uIHJrMzM5OSAtVCBya3NwaSAtZAp0cGwvdS1ib290LXRw
bC5iaW46c3BsL3UtYm9vdC1zcGwuYmluIGlkYmxvYWRlci5pbWcKClRlY2huaWNhbGx5IHRoaXMg
cGF0Y2ggYWxsb3dzIHVzIHRvIGJ1aWxkIE1NQyBib290IGltYWdlIHNpbmNlIGl0IGlzIGEKZGVm
YXVsdCBib290IGltYWdlIHJlcXVpcmVtZW50IGZvciBtb3N0IG9mIHRoZSBib2FyZC4gIEFuZCB5
ZXMgd2lsbAp0cnkgdG8gdXBkYXRlIE1ha2VmaWxlIG9uY2UgSSBoYXZlIGZpeGVkIHRoZSBhYm92
ZSBwcm9ibGVtIHdpdGggU1BJClRQTC1mbG93LgoKSmFnYW4uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

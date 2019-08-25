Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FFF9C50B
	for <lists+linux-rockchip@lfdr.de>; Sun, 25 Aug 2019 19:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6bTBzu7jySWUTNVy21IFQRhNDCRAvx9Br2WGlj5D5E=; b=nBLh3MLkIkgRU1
	J8Kcgme870KIUPC/dwqFg0CrgZksCOwRPhsIpYxPD3VdHOqWlfuTj95JNg8dFDTXAYmJe40Tdl4YY
	depyYYCBQrfZ87XZ1kvTgnn4ADxHtd03MH3S0nwAWqBBOmAsl1eL8Cfbntx/rUcV3/6XGJKz/rbd4
	rw/2sGo+w6UO3q6q2ERKf9bKFuN7CYTj6p0Iih/j5uwUNFRJlpCnSCX9/O848uV4WREAe/twrT0mX
	eOlykpIXR5c5kjlGfz8d2fLShbZIk2xradku2oRxRXPvA+lU0xnrzFLykhpvlUbnu6eyVw6OWNrJF
	ge2UuyC6h0kGJPfkohJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1wGX-0007Cu-24; Sun, 25 Aug 2019 17:25:21 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1wGQ-0007CS-9T
 for linux-rockchip@lists.infradead.org; Sun, 25 Aug 2019 17:25:15 +0000
Received: by mail-io1-xd44.google.com with SMTP id z3so31853673iog.0
 for <linux-rockchip@lists.infradead.org>; Sun, 25 Aug 2019 10:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gwrDoDlkPF+Z0CZgHYJPRovF666g4+sdJJ9ljgRAVaU=;
 b=MSZDdnb4F0K0vN1DsknAmi5CrrXaYlSK6Y0Au+PqLtcXKLoRB5bc++zsF3iOYo3a97
 cLYFCD0yn7tjtbfyYn5NjCWjsGUtceLW93p519hB37XosrGfBcK8iahOX/SplvUUP8vC
 GZPeeMnO8h0epye863fr9Jn8UlgZDsm1a8k54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gwrDoDlkPF+Z0CZgHYJPRovF666g4+sdJJ9ljgRAVaU=;
 b=YrEriqGKLo5U6BCMnl6Jn2UyzkbuFXzfq1yZH82Sz4oxAbDrXp74lrRKffhYnxp26V
 PEcIcAwHG8q7Z2OTwprMejT4r6EnWv/PGXAxOANd3SZAkRY2UfE0XjZZAyg/jZ8yEZqL
 P8fGozu6ZXAmS+Wu/VrhkbDNbHnROsF6L62YCpL7xVklL5padDi59FOSAZtS6i+UURGc
 Gq5KLHgOohSB+l0sKNoC3guA0esRz1G+i3W/VUwEntKu0jQ6MCr/4IsZ6KXv3PwHenXF
 YidmYarTci8iRr1sDImB19L4jScGlwAvXE4JMYzRnvHIqzdfeyim9vtI/c4AhwYwDqqZ
 E5/A==
X-Gm-Message-State: APjAAAXsLVxxEI8zXto6THbpEngBySU/EpagNFFMN1SaUe/b2PJRowxj
 Z9hkb0OM4l16Tdk3o4yoSSAlL8hUvFUxGc5LfmoM7aPL
X-Google-Smtp-Source: APXvYqy1ljUgnVTb0PimBcukQabDS1Wj36UUZyPyIVEMCLS0Vd1QP+Kk9TI77hpuHKMbIzWHL5VF2QNhgeAJvIgrubY=
X-Received: by 2002:a6b:710b:: with SMTP id q11mr8248936iog.61.1566753912125; 
 Sun, 25 Aug 2019 10:25:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-2-jagan@amarulasolutions.com>
 <ff98fdae-e854-a741-1b0e-a4d7231901e6@rock-chips.com>
In-Reply-To: <ff98fdae-e854-a741-1b0e-a4d7231901e6@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 25 Aug 2019 22:55:01 +0530
Message-ID: <CAMty3ZDnF110_q73fzoZu7_J20X7ZMOiv2s1ifZOsnVsGiYDmA@mail.gmail.com>
Subject: Re: [PATCH 01/15] arm: rockchip: Add common cru.h
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_102514_473355_7A8076DD 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBBdWcgNSwgMjAxOSBhdCA1OjU1IFBNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiBPbiAyMDE5LzcvMjkg5LiL5Y2I
Mzo0NiwgSmFnYW4gVGVraSB3cm90ZToKPiA+IEZldyBvZiB0aGUgcm9ja2NoaXAgZmFtaWx5IFNv
QyBhdGxlYXN0IHJrMzI4OCwKPiA+IHJrMzM5OSBhcmUgc2hhcmluZyBzb21lIGNydSByZWdpc3Rl
ciBiaXRzIHNvCj4gPiBhZGRpbmcgY29tbW9uIGNvZGUgYmV0d2VlbiB0aGVzZSBTb0MgZmFtaWxp
ZXMKPiA+IHdvdWxkIHJlcXVpcmUgdG8gaW5jbHVkZSBib3RoIGNydSBpbmNsdWRlIGZpbGVzCj4g
PiB0aGF0IGluZGVlZCByZXN1bHRpbmcgZnVuY3Rpb24gZGVjbGFyYXRpb25zIGVycm9yLgo+ID4K
PiA+IFNvLCBjcmVhdGUgYSBjb21tb24gY3J1IGluY2x1ZGUgYXMgY3J1LmggdGhlbgo+ID4gaW5j
bHVkZSB0aGUgYXJjaCBjcnUgaW5jbHVkZSBmaWxlIGFuZCBtb3ZlIHRoZQo+ID4gY29tbW9uIGNy
dSByZWdpc3RlciBiaXQgZGVmaW5pdGlvbnMgaW50byBpdC4KPgo+IEFkZCBjb2RlIGZvciBjb21t
b24gcmVnaXN0ZXIgYml0IGRlZmluaXRpb25zIGlzIE9LLCBpcyBpdCBhYmxlIHRvIG1lcmdlCj4K
PiBpbnRvIGNsb2NrLmg/IE9yIG1heWJlIHdlIGNhbiB1c2UgY3J1LmggYW5kIGRvIHNvbWUgY2xl
YW51cCBmb3IgY2xvY2suaAoKWWVzIHRydWUsIHdpbGwgZG8gdGhhdCBpbiBzZXBhcmF0ZWx5IHNp
bmNlIHRoZSBjcnUgaXMgdGhlIGVmZmVjdGVkIG9uZQpmb3IgcmVkdW5kYW50LCBJIGhhdmUgbWFu
YWdlZCBvbmx5IHRoaXMgZm9yIHRoaXMgc2VyaWVzLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73462237F
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 14:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8izlJNXbX7sr6O79+iRLnRI83brTFN6gQcDucOua56Y=; b=AInxaNN+Nl0/kLBaq0FI+R854
	av6sp/a3RJI77AFt4V75fURUwlFpEtBG2qJLlqxP9iSYrwDOWXnOXb1IMlBprSFqHZgUVFTVBuY+G
	MHbQ2yxFSPR0w4pC1ushJ+34gyH5XWJjKt7ldC0GJgWnO3wZ0zd+swcdUbbzp3oDR+54s0B2DLBSB
	uPAex/W0jMI3izTk62iHZf0ZDufHqkYNA6XMVws9YlbVhgu5Qztk/PbkZuV+ID61jGWx/BTpxHIEo
	iGFANljA2UrXC3UUbpPmCOerYBX4aDM9nV7qbn0YCpMJ56qrTQK/YoeeM6cD6edEgIr+SycQKD3VC
	jhYN1p1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRyTG-0000jM-FK; Sat, 18 May 2019 12:29:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRyTC-0000iw-W4
 for linux-rockchip@lists.infradead.org; Sat, 18 May 2019 12:29:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so9697243wrq.12
 for <linux-rockchip@lists.infradead.org>; Sat, 18 May 2019 05:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=qb7+Ies/2uVXsOi5qhulV/WRfvPjXww4diTcYzo+5OE=;
 b=uaM8v3Qv8f2AKQM8yX1a9Pav1xOOa4y5IQqN01UAQbrtDBLmBm9+/AlDBDm/g3vR6J
 EUvJSNXSMC3R0/6W6Y9m1eV9I/GMS8B9xJGu2Uzw0J0GD8b5fI87wbBeIWt7MTYkhVib
 P40FNDX+ctX6DvxyKkS4wWf3xNOZgi44CvztrU6hEBiuCGCgawNpK50TP7rfhHFlEhgm
 TA7hJE24CHf2A0qDsA+7Py8fleUkRXm2p3j7HrJHj8JvD4ilEsISwSFtQDgRl7ppCsgQ
 c+TgYzDXWudg2LwB4cQ4epic8sc97xzYQsZTwFNyHMX3Lw5cIMpRVwQldK5DEV8FOs84
 WTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=qb7+Ies/2uVXsOi5qhulV/WRfvPjXww4diTcYzo+5OE=;
 b=VRHpZsQa9iYtRd7vBy86mfMSQpCcyECrgCH9FBsOC5nMyqIe1sx2xQlfT26NV6FMWY
 0JQtsYUvDeLUJLl8i47Iz4DV4p6HGVSf4p+KSveoN7xCPCGCsNqrfItmRLecNQ2XFSN0
 AGuYwqOW4nVE6RybEhM3TTkGNh+W1KVsdQ45Ni6bP1fLUcyxJT6hKdyUmHyJhtyC8yba
 wt46+UjJnsIjgMXELJ3N6ShSVpTxwnxwHFJoKMuzywXRYYUZ/KUeCHasKZzXPwOF4N03
 0aw9PPEr+Ucdmq09ujJU7LnNB2BYfsxDtxFIOg0Ygc+U5s78qVZKSyTVkMETjr7NiePB
 /2zQ==
X-Gm-Message-State: APjAAAU9W+VB4HsqNlSaTMvnugXYAtK7fFF+YUTmf5IhtWDiYprQT7J3
 VBbT+4Pxnks3xU7m6PQtkhw=
X-Google-Smtp-Source: APXvYqzEy5VTCCCZiBe9hypGHFfGy9NgpGR5ZfM1wg2V6/90m9BUl8jsH+7w7KeTJd4nV5md/cb2BQ==
X-Received: by 2002:a5d:638a:: with SMTP id p10mr12153153wru.273.1558182583516; 
 Sat, 18 May 2019 05:29:43 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id b10sm25859002wrh.59.2019.05.18.05.29.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 05:29:42 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Type-C port supply in
 =?iso-8859-1?Q?Sapphire_board?=
Date: Sat, 18 May 2019 14:29:41 +0200
MIME-Version: 1.0
Message-ID: <574f2bae-0121-4cc7-ad9a-5ba32315d71b@gmail.com>
In-Reply-To: <4199457.qejmJXf6nG@phil>
References: <3744467.8gaGBgj8zp@phil>
 <20180910161029.1948-1-vicencb@gmail.com> <4199457.qejmJXf6nG@phil>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_052947_058173_FEA124E0 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBTZXB0ZW1iZXIgMTAsIDIwMTggNzoxOToyMCBQTSBDRVNULCBIZWlrbyBTdHVl
Ym5lciB3cm90ZToKPiBBbSBNb250YWcsIDEwLiBTZXB0ZW1iZXIgMjAxOCwgMTg6MTA6MjkgQ0VT
VCBzY2hyaWViIFZpY2VudGUgQmVyZ2FzOgo+PiBUaGUgcmVmZXJlbmNlIGlzIHRoZSBzY2hlbWF0
aWMsIHBhZ2UgMTE6Cj4+IGh0dHBzOi8vZGwudmFtcnMuY29tL3Byb2R1Y3RzL3NhcHBoaXJlX2V4
Y2F2YXRvci9SS19TQVBQSElSRV9TT0NCT0FSRF9SSzMzOTlfTFBERFIzRDE3OFAyMzJTRDhfVjEy
XzIwMTYxMTA5SFhTLnBkZgo+PiAoYWx0ZXJuYXRlIGxpbmspCj4+IGh0dHA6Ly9vcGVuc291cmNl
LnJvY2stY2hpcHMuY29tL2ltYWdlcy9mL2YwL1JLX1NhcHBoaXJlX1JLMzM5OS5yYXIKPj4gCj4+
IENoYW5nZXMgaW4gdjI6Cj4+ICBUaGUgcG93ZXIgc3VwcGx5IGlzIGFwcGxpZWQgdG8gdGhlIE9U
RyBwb3J0Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21h
aWwuY29tPgo+Cj4gYXBwbGllZCBmb3IgNC4yMAo+Cj4KPj4gSGkgSGVpa28sCj4+IHlvdXIgYXBw
cm9hY2ggbWFrZXMgc2Vuc2UsIGkganVzdCB0cmllZCBpdCBhbmQgdGhlIFR5cGUtQyBwb3J0IGlz
Cj4+IHN0aWxsIHBvd2VyZWQtb24sIGxpa2Ugd2l0aCB0aGUgcHJldmlvdXMgcGF0Y2guCj4+IEJ1
dCBzYWRseSBzdGlsbCBubyBkYXRhIGZsb3cuCj4+IAo+PiBJIGhhdmUgZ290IGEgZ3J1L2tldmlu
IGFuZCBhbHNvIGJvdWdodCBhIFVTQi1DIHRvIFNBVEEgYnJpZGdlCj4+IGZvciBpdC4gVGhlIGJy
aWRnZSB3b3JrcyBmaW5lIG9uIGtldmluIHdpdGgga2VybmVsIDQuNCwgc3RpbGwgbm90Cj4+IHRl
c3RlZCB3aXRoIG1haW5saW5lLgo+PiAKPj4gQnV0IHdoZW4gcGx1Z2dlZCBpbnRvIHRoZSBTYXBw
aGlyZSB0aGVyZSBpcyBhbiBMRUQgdGhhdCBzaG93cyBpdAo+PiBpcyBwb3dlcmVkLW9uIGFuZCBu
b3RoaW5nIGVsc2UuIE9uIHRoZSBsaW51eCBzaWRlLCBkbWVzZyBzaG93cyBubwo+PiBtZXNzYWdl
cy4KPj4gCj4+IENvbXBhcmluZyB0aGUgVVNCIHBvcnRpb24gb2YgdGhlIERUUyB3cnQgRmlyZWZs
eSBpIHNlZSBubwo+PiBzaWduaWZpY2FudCBkaWZmZXJlbmNlcy4KPj4gCj4+IEFyZSB0aGVyZSBv
dGhlciBTYXBwaGlyZSBib2FyZCB1c2VycyB0aGF0IGNhbiBjb25maXJtIGlmIHRoZQo+PiBUeXBl
LUMgcG9ydCB3b3JrcyBvciBub3Q/IFRoYXQgd291bGQgaGVscCB0byBkaXNjYXJkIGEgSFcgaXNz
dWUuCj4KPiBFbnJpYyB3YXMgd29ya2luZyBvbiBhIHNpbWlsYXIgYm9hcmQsIG1heWJlIGhlIHJl
bWVtYmVyIHNvbWUKPiBwZWN1bGlhcml0aWVzLgoKSGksCmkgaGF2ZSB0YWtlbiBhbm90aGVyIGxv
b2sgYXQgdGhlIFVTQjMgVHlwZS1DIHBvcnQgb2YgdGhlIFNhcHBoaXJlIGJvYXJkCmFuZCBtYWRl
IGEgbGl0dGxlIGJpdCBvZiBwcm9ncmVzcy4gTm93IHRoZXJlIGlzIHNvbWUgZGF0YSB0cmFuc2Zl
ciwgYnV0CnN0aWxsIG5vdCB3b3JraW5nLgoKQXBwbHlpbmcgdGhpcyBwYXRjaDoKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktc2FwcGhpcmUuZHRzaQorKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1zYXBwaGlyZS5kdHNpCkBAIC0xMTIsNiAr
MTExLDcgQEAKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJcGluY3RybC0wID0gPCZ2
Y2M1djBfdHlwZWMwX2VuPjsKIAkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjMCI7CisJ
CXJlZ3VsYXRvci1hbHdheXMtb247CiAJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+OwogCX07CiAK
YW5kIGhhdmluZyBhIG1lbW9yeSBzdGljayBwbHVnZ2VkIGludG8gdGhlIHBvcnQgZnJvbSBwb3dl
ci11cCwgdGhlIApmb2xsb3dpbmcgaGFwcGVuczoKMS4tIFRoZSBtZW1vcnkgc3RpY2sgTEVEIGxp
Z2h0cyBvbiBhbmQga2VybmVsIHJlcG9ydHM6ClsgICAgNC43ODI5OTldIHNjc2kgMDowOjA6MDog
RGlyZWN0LUFjY2VzcyAgICAgVVNCICAgICAgRElTSyAgICAgICAgICAgICAKUE1BUCBQUTogMCBB
TlNJOiA0ClsgICAgNS45MDQ1ODBdIHNkIDA6MDowOjA6IFtzZGJdIDM5MTMzNDQgNTEyLWJ5dGUg
bG9naWNhbCBibG9ja3M6ICgyLjAwIApHQi8xLjg3IEdpQikKWyAgICA1LjkwNjg2MF0gc2QgMDow
OjA6MDogW3NkYl0gV3JpdGUgUHJvdGVjdCBpcyBvZmYKWyAgICA1LjkwODk3M10gc2QgMDowOjA6
MDogW3NkYl0gTW9kZSBTZW5zZTogMjMgMDAgMDAgMDAKWyAgICA1LjkwOTEyMl0gc2QgMDowOjA6
MDogW3NkYl0gTm8gQ2FjaGluZyBtb2RlIHBhZ2UgZm91bmQKWyAgICA1LjkxMTIxNF0gc2QgMDow
OjA6MDogW3NkYl0gQXNzdW1pbmcgZHJpdmUgY2FjaGU6IHdyaXRlIHRocm91Z2gKWyAgICA1Ljk1
MTU4NV0gIHNkYjogc2RiMQpbICAgIDUuOTU0ODE2XSBzZCAwOjA6MDowOiBbc2RiXSBBdHRhY2hl
ZCBTQ1NJIHJlbW92YWJsZSBkaXNrCjIuLSA0IHNlY29uZHMgbGF0ZXIgdGhlIG1lbW9yeSBzdGlj
ayBMRUQgbGlnaHRzIG9mZiBhbmQga2VybmVsIHJlcG9ydHM6ClsgICAgOS4wODI4MjJdIHBoeSBw
aHktZmY3NzAwMDAuc3lzY29uOnVzYjItcGh5QGU0NTAuMjogY2hhcmdlciA9IApVU0JfRENQX0NI
QVJHRVIKMy4tIEFmdGVyIGEgbWludXRlIHRoZSBrZXJuZWwgcmVwb3J0czoKWyAgIDcxLjY2Njc2
MV0gdXNiIDUtMTogVVNCIGRpc2Nvbm5lY3QsIGRldmljZSBudW1iZXIgMgoKVGhlIHVzYiB2YnVz
IGlzIHByZXNlbnQgYWxsIHRoZSB0aW1lLCBzbywgaXQgZG9lcyBub3QgbG9vawpsaWtlIGFuIGlz
c3VlIG9mIHRoZSB2Y2M1djBfdHlwZWMwIHJlZ3VsYXRvci4KClBsZWFzZSwgY2FuIHlvdSBoZWxw
IG1lIGRlYnVnZ2luZyB0aGlzIGlzc3VlPwoKUmVnYXJkcywKICBWaWNlbsOnLgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

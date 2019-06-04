Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FE434CC6
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 18:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/xeLCkCCZXjRaRBnVkh3E5rcIeAuXrGq3DA7HtXRYA=; b=cF5E6yHT2ZVAOT
	ji++vwhK1nlng/zfq6P2cJPSM+p15vyGVMZJADz+3DFgHFLyuqTdlTTaotcQjFRk2KqyB+xCvFs88
	ecL6IcTvPQRWPvmLREXmhNPd8Xb8RmVnEByv6liVfIO8z/v8AQiOm9IUpyhsVjps1Zcob574kvgSc
	qCo3u2NyEo06l1i/YjUqP9zn3fGEOk1Rd4vaOedQqEJSulfUMCSVWodnn5RA0+bZGjeDpiKUyahbF
	FTGOr558J0tZOTDqIHz2aJ3CcJMEUlOghuo890Xw2JyW/wj7SAE+f4O6S6vaKiPz9M14+opLPcyj+
	SdikgzMzrvOIAa230oUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBsb-0003z2-46; Tue, 04 Jun 2019 16:01:41 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBsX-0003y9-Jo
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 16:01:39 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u124so3259075vsu.2
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 09:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JJnKTszq0LucT9tff8aVBNiTlpqFIuwICl/wZRuN/SM=;
 b=GQPGFwKdD+yYos6fP+5thtoEjgvr0MNDy0yHYc8fZz73MyW879mUUBZAhYk/YR5/zU
 9hIznQ03ADry6HE/yWZjoTrxElltsqKGduoZz2kRZMN1cCWbM/+RGRexzWI62NcqV19V
 CocEHM4nD9FB9MbHrma4vtmwngw3CVYG9b9VA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JJnKTszq0LucT9tff8aVBNiTlpqFIuwICl/wZRuN/SM=;
 b=Tv96QFNIs4rnhgFGtxG1z6N6XEv2fDJIMkDIPpAsYEoYz7rXAmov+JTDCYgTanMZ9N
 HvJAtkV6VWrnixA3UY/urepGI77ArwzT+ku+8S2QPU67gALaR9P2kI89Z4uMogzWJfl+
 fUbwZUqX99s/HHMDuaftM3PhScXUOa8d99/xVrI7mR6g7oNLNG3bg8DPjkE1wG5iomVg
 N2KCvhs/1o66lMtzeiq73amH/X85vOTe9vbbp/gp5Mm29SMP4s4HxXXbly2U0bHeA0TO
 yGnkhcKJZ9PVkuGh8ktiiNbV7/kQU0wWXqKiaMdoVvbmenzzq4BuR8sJC7pGlycgGqjX
 8zsw==
X-Gm-Message-State: APjAAAWzx3GEIq3IJRIYsgpo0ngf9tlsyAyAH3nMlOeMvdYNwnnYzimb
 H/Y9I1Aigix4RQMe2dYJU0obA0sT5b8=
X-Google-Smtp-Source: APXvYqygVClGUPQLf3YjqqrvX/dXSoOXnNLUZEvpUqmigtMlTUYnyRek4lSjekF0YAnjF/wkW251uA==
X-Received: by 2002:a67:1842:: with SMTP id 63mr5696856vsy.179.1559664089390; 
 Tue, 04 Jun 2019 09:01:29 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com.
 [209.85.222.48])
 by smtp.gmail.com with ESMTPSA id g26sm2174468ual.10.2019.06.04.09.01.25
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:01:26 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id v18so1990659uad.12
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 09:01:25 -0700 (PDT)
X-Received: by 2002:ab0:5ad0:: with SMTP id x16mr15793093uae.124.1559664085104; 
 Tue, 04 Jun 2019 09:01:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
 <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <16aff358a20.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <40587a64-490b-8b1e-8a11-1e1aebdab2f3@cypress.com>
In-Reply-To: <40587a64-490b-8b1e-8a11-1e1aebdab2f3@cypress.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 4 Jun 2019 09:01:10 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
Message-ID: <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
To: Wright Feng <Wright.Feng@cypress.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_090137_656475_8D9984BE 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
 Arend Van Spriel <arend.vanspriel@broadcom.com>,
 YueHaibing <yuehaibing@huawei.com>, Double Lo <Double.Lo@cypress.com>,
 netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <Naveen.Gupta@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIEp1biAzLCAyMDE5IGF0IDg6MjAgUE0gV3JpZ2h0IEZlbmcgPFdyaWdodC5G
ZW5nQGN5cHJlc3MuY29tPiB3cm90ZToKPgo+IE9uIDIwMTkvNS8yOSDkuIrljYggMTI6MTEsIEFy
ZW5kIFZhbiBTcHJpZWwgd3JvdGU6Cj4gPiBPbiBNYXkgMjgsIDIwMTkgNjowOToyMSBQTSBBcmVu
ZCBWYW4gU3ByaWVsCj4gPiA8YXJlbmQudmFuc3ByaWVsQGJyb2FkY29tLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4+IE9uIE1heSAyOCwgMjAxOSA1OjUyOjEwIFBNIERvdWcgQW5kZXJzb24gPGRpYW5kZXJz
QGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPj4KPiA+Pj4gSGksCj4gPj4+Cj4gPj4+IE9uIFR1ZSwg
TWF5IDI4LCAyMDE5IGF0IDU6MTggQU0gS2FsbGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+
IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVt
Lm9yZz4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gPiBJbiBjb21taXQgMjlmNjU4OTE0MGExICgiYnJj
bWZtYWM6IGRpc2FibGUgY29tbWFuZCBkZWNvZGUgaW4KPiA+Pj4+ID4gc2Rpb19hb3MiKSB3ZSBk
aXNhYmxlZCBzb21ldGhpbmcgY2FsbGVkICJjb21tYW5kIGRlY29kZSBpbiBzZGlvX2FvcyIKPiA+
Pj4+ID4gZm9yIGEgd2hvbGUgYnVuY2ggb2YgQnJvYWRjb20gU0RJTyBXaUZpIHBhcnRzLgo+ID4+
Pj4gPgo+ID4+Pj4gPiBBZnRlciB0aGF0IHBhdGNoIGxhbmRlZCBJIGZpbmQgdGhhdCBteSBrZXJu
ZWwgbG9nIG9uCj4gPj4+PiA+IHJrMzI4OC12ZXlyb24tbWlubmllIGFuZCByazMyODgtdmV5cm9u
LXNwZWVkeSBpcyBmaWxsZWQgd2l0aDoKPiA+Pj4+ID4gICBicmNtZm1hYzogYnJjbWZfc2Rpb19i
dXNfc2xlZXA6IGVycm9yIHdoaWxlIGNoYW5naW5nIGJ1cyBzbGVlcAo+ID4+Pj4gc3RhdGUgLTEx
MAo+ID4+Pj4gPgo+ID4+Pj4gPiBUaGlzIHNlZW1zIHRvIGhhcHBlbiBldmVyeSB0aW1lIHRoZSBC
cm9hZGNvbSBXaUZpIHRyYW5zaXRpb25zIG91dCBvZgo+ID4+Pj4gPiBzbGVlcCBtb2RlLiAgUmV2
ZXJ0aW5nIHRoZSBwYXJ0IG9mIHRoZSBjb21taXQgdGhhdCBhZmZlY3RzIHRoZQo+ID4+Pj4gV2lG
aSBvbgo+ID4+Pj4gPiBteSBib2FyZHMgZml4ZXMgdGhlIHByb2JsZW0gZm9yIG1lLCBzbyB0aGF0
J3Mgd2hhdCB0aGlzIHBhdGNoIGRvZXMuCj4gPj4+PiA+Cj4gPj4+PiA+IE5vdGUgdGhhdCwgaW4g
Z2VuZXJhbCwgdGhlIGp1c3RpZmljYXRpb24gaW4gdGhlIG9yaWdpbmFsIGNvbW1pdAo+ID4+Pj4g
c2VlbWVkCj4gPj4+PiA+IGEgbGl0dGxlIHdlYWsuICBJdCBsb29rZWQgbGlrZSBzb21lb25lIHdh
cyB0ZXN0aW5nIG9uIGEgU0QgY2FyZAo+ID4+Pj4gPiBjb250cm9sbGVyIHRoYXQgd291bGQgc29t
ZXRpbWVzIGRpZSBpZiB0aGVyZSB3ZXJlIENSQyBlcnJvcnMgb24gdGhlCj4gPj4+PiA+IGJ1cy4g
IFRoaXMgdXNlZCB0byBoYXBwZW4gYmFjayBpbiBlYXJseSBkYXlzIG9mIGR3X21tYyAodGhlCj4g
Pj4+PiBjb250cm9sbGVyCj4gPj4+PiA+IG9uIG15IGJvYXJkcyksIGJ1dCB3ZSBmaXhlZCBpdC4g
IERpc2FibGluZyBhIGZlYXR1cmUgb24gYWxsIGJvYXJkcwo+ID4+Pj4gPiBqdXN0IGJlY2F1c2Ug
b25lIFNEIGNhcmQgY29udHJvbGxlciBpcyBicm9rZW4gc2VlbXMgYmFkLiAgLi4uc28KPiA+Pj4+
ID4gaW5zdGVhZCBvZiBqdXN0IHRoaXMgcGF0Y2ggcG9zc2libHkgdGhlIHJpZ2h0IHRoaW5nIHRv
IGRvIGlzIHRvIGZ1bGx5Cj4gPj4+PiA+IHJldmVydCB0aGUgb3JpZ2luYWwgY29tbWl0Lgo+ID4+
Pj4gPgo+IFNpbmNlIHRoZSBjb21taXQgMjlmNjU4OTE0MGExICgiYnJjbWZtYWM6IGRpc2FibGUg
Y29tbWFuZCBkZWNvZGUgaW4KPiBzZGlvX2FvcyIpIGNhdXNlcyB0aGUgcmVncmVzc2lvbiBvbiBv
dGhlciBTRCBjYXJkIGNvbnRyb2xsZXIsIGl0IGlzCj4gYmV0dGVyIHRvIHJldmVydCBpdCBhcyB5
b3UgbWVudGlvbmVkLgo+IEFjdHVhbGx5LCB3aXRob3V0IHRoZSBjb21taXQsIHdlIGhpdCBNTUMg
dGltZW91dCgtMTEwKSBhbmQgaGFuZ2VkCj4gaW5zdGVhZCBvZiBDUkMgZXJyb3IgaW4gb3VyIHRl
c3QuCgpBbnkgY2hhbmNlIEkgY2FuIGNvbnZpbmNlIHlvdSB0byBwcm92aWRlIHNvbWUgb2ZmaWNp
YWwgdGFncyBsaWtlClJldmlld2VkLWJ5IG9yIFRlc3RlZC1ieSBvbiB0aGUgcmV2ZXJ0PwoKPiBX
b3VsZCB5b3UgcGxlYXNlIHNoYXJlIHRoZSBhbmFseXNpcyBvZgo+IGR3X21tYyBpc3N1ZSB3aGlj
aCB5b3UgZml4ZWQ/IFdlJ2QgbGlrZSB0byBjb21wYXJlIHdoZXRoZXIgd2UgZ290IHRoZQo+IHNh
bWUgaXNzdWUuCgpJJ20gbm90IHN1cmUgdGhlcmUncyBhbnkgc2luZ2xlIG1hZ2ljIGNvbW1pdCBJ
IGNhbiBwb2ludCB0by4gIFdoZW4gSQpzdGFydGVkIHdvcmtpbmcgb24gZHdfbW1jIGl0IHdhcyB0
ZXJyaWJsZSBhdCBoYW5kbGluZyBlcnJvciBjYXNlcyBhbmQKd291bGQgb2Z0ZW4gY3Jhc2ggLyBo
YW5nIC8gc3RvcCBhbGwgZnV0dXJlIGNvbW11bmljYXRpb24gdXBvbiBjZXJ0YWluCmNsYXNzZXMg
b3IgZWZmb3J0cy4gIFRoZXJlIHdlcmUgZG96ZW5zIG9mIHByb2JsZW1zIHdlJ3ZlIGhhZCB0byBm
aXgKb3ZlciB0aGUgeWVhcnMuICBUaGVzZSBwcm9ibGVtcyBzaG93ZWQgdXAgd2hlbiB3ZSBzdGFy
dGVkIHN1cHBvcnRpbmcKSFMyMDAgLyBVSFMgc2luY2UgdGhlIHR1bmluZyBwaGFzZSByZWFsbHkg
c3RyZXNzIHRoZSBlcnJvciBoYW5kbGluZyBvZgp0aGUgaG9zdCBjb250cm9sbGVyLgoKSSBzZWFy
Y2hlZCBhbmQgYnkgdGhlIHRpbWUgd2Ugd2VyZSBzdXBwb3J0aW5nIEJyb2FkY29tIFNESU8gY2Fy
ZHMgdGhlCmVycm9yIGhhbmRsaW5nIHdhcyBhbHJlYWR5IHByZXR0eSBnb29kLiAgLi4uYnV0IGlm
IHdlIGhhZG4ndCBhbHJlYWR5Cm1hZGUgdGhlIGVycm9yIGhhbmRsaW5nIG1vcmUgcm9idXN0IGZv
ciBVSFMgdHVuaW5nIHRoZW4gd2Ugd291bGQgaGF2ZQpkZWZpbml0ZWx5IGhpdCB0aGVzZSB0eXBl
cyBvZiBwcm9ibGVtcy4gIFRoZSBvbmx5IHByb2JsZW0gSSByZW1lbWJlcgpoYXZpbmcgdG8gc29s
dmUgaW4gZHdfbW1jIHRoYXQgd2FzIHVuaXF1ZSB0byBCcm9hZGNvbSB3YXMgY29tbWl0CjBiZGJk
MGU4OGNmNiAoIm1tYzogZHdfbW1jOiBEb24ndCBzdGFydCBjb21tYW5kcyB3aGlsZSBidXN5Iiku
ICBBbnkKY2hhbmNlIHRoYXQgY291bGQgYmUgd2hhdCB5b3UncmUgaGl0dGluZz8KCldoYXQgaG9z
dCBjb250cm9sbGVyIGFyZSB5b3UgaGF2aW5nIHByb2JsZW1zIHdpdGg/CgotRG91ZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

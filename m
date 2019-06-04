Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68EC34DFB
	for <lists+linux-rockchip@lfdr.de>; Tue,  4 Jun 2019 18:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IywrtQ4Y6Pi4VH/0CZrgrCP4obY85K0AyK6H0c93GtQ=; b=NVAznHqLPn9BT68H7vMYmJinm
	qBHUCT1Su0cj0cJEqrsLE7CygCY4hwAYJ/K4fi1rpKmIG2AObrHg3dPUu+mgxch7m8KRwnaMkgoGD
	WhF7Fgs7Cy4dpTC21bjZLMSJVepxVyr+PNcTvL1rL7TdJFYaN76Ke40oX4vfv2jFh2fpUbGrKTqDe
	Du/7GPsgfkGwMMVCaOGrvEswW+HUcxAfrKrEcD4Tg/lVORmqJ0d20zDKLW2cPLcbGCSEC3XaLUCaU
	YG5eF4laBnKJHWUhEOypRHbzYiIsN15XrXAk9iLdcALrzcGGoVTskE40mfDzc/OTlGxyOpkE2dg03
	CW5PPcJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCcX-0001jL-Bc; Tue, 04 Jun 2019 16:49:09 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCcT-0001iV-Bo
 for linux-rockchip@lists.infradead.org; Tue, 04 Jun 2019 16:49:06 +0000
Received: by mail-ed1-x543.google.com with SMTP id h10so1320605edi.13
 for <linux-rockchip@lists.infradead.org>; Tue, 04 Jun 2019 09:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=htJGxlotLvs1Z4U6dZKpFxplNjTIfrsnnYtpYuTDheU=;
 b=R65lslW41TgbT3+HYxMMjdC1uaQkK3+KBb3U0Ny04v00ZXQz0M5njpJO0tzBd/YuNW
 RxIApA/5BN6eLgog0OTyD225kmO2K54y61DD+jOoUglq8uH3oRxCm/TWybHsmKXMFkWn
 c/6tNH9A+v0XZFWm5dCH8txy2CUadmZk/a7Gk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=htJGxlotLvs1Z4U6dZKpFxplNjTIfrsnnYtpYuTDheU=;
 b=REDJoIVG1oCaPUxlLpIUE2Dr/5dB7U4BVwZKfdKCkI/OeXEBGagZ5ILZk3Ha8+sF+R
 Fo8qmTPaxpKrzGHJvVj9ZpDc/V7QcBuFa/96QcvasKT9gJzncgTGbvp+UunGiHGeFWd1
 wgB4sEjCSIF2ZE6NkfzjnHca1CFTM+P6LFMMOkMdCZJNfoTMMpwoY8u8uJmr7FzNatza
 1yIIPrUIvJ8YHFnd6HQ8bTw+nnWrF+AKIQgUHOmYegBSj+f8dXo5LkismKlsIwvFbxLW
 MJXLIVfcSChux334BKNTHKkJqJVuG1OOLIvk4867jhbhLz7jf6MuRqd3JTSTCJ5/Kgac
 nEYw==
X-Gm-Message-State: APjAAAVcedpPHorLx48zj1ZwZYjZioXbV7uBGEb36IbfsNhNrtYvFSca
 Eortg3eYCpTzXnJ73wwA4WDkJQ==
X-Google-Smtp-Source: APXvYqztipAoz79D/S8ve0jSHSJoCk4kQevwSEFXnnm7enKqQcPjs6vXyDkTT7yXt9aaPM5FJWIVHw==
X-Received: by 2002:a17:906:d7ab:: with SMTP id
 pk11mr11277278ejb.216.1559666943273; 
 Tue, 04 Jun 2019 09:49:03 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id e45sm4818556edb.12.2019.06.04.09.48.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 09:49:02 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>,
 Wright Feng <Wright.Feng@cypress.com>
Date: Tue, 04 Jun 2019 18:48:57 +0200
Message-ID: <16b2364c8c0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
 <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <16aff358a20.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <40587a64-490b-8b1e-8a11-1e1aebdab2f3@cypress.com>
 <CAD=FV=Wr4WsO7Xmei5GB4X91L_sDN331B1_oH+CPZOeFUkxyMg@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_094905_417203_0947C355 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 Double Lo <Double.Lo@cypress.com>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>,
 Naveen Gupta <Naveen.Gupta@cypress.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gSnVuZSA0LCAyMDE5IDY6MDE6MjYgUE0gRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21p
dW0ub3JnPiB3cm90ZToKCj4gSGksCj4KPiBPbiBNb24sIEp1biAzLCAyMDE5IGF0IDg6MjAgUE0g
V3JpZ2h0IEZlbmcgPFdyaWdodC5GZW5nQGN5cHJlc3MuY29tPiB3cm90ZToKPj4KPj4gT24gMjAx
OS81LzI5IOS4iuWNiCAxMjoxMSwgQXJlbmQgVmFuIFNwcmllbCB3cm90ZToKPj4gPiBPbiBNYXkg
MjgsIDIwMTkgNjowOToyMSBQTSBBcmVuZCBWYW4gU3ByaWVsCj4+ID4gPGFyZW5kLnZhbnNwcmll
bEBicm9hZGNvbS5jb20+IHdyb3RlOgo+PiA+Cj4+ID4+IE9uIE1heSAyOCwgMjAxOSA1OjUyOjEw
IFBNIERvdWcgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4+ID4+Cj4+
ID4+PiBIaSwKPj4gPj4+Cj4+ID4+PiBPbiBUdWUsIE1heSAyOCwgMjAxOSBhdCA1OjE4IEFNIEth
bGxlIFZhbG8gPGt2YWxvQGNvZGVhdXJvcmEub3JnPiB3cm90ZToKPj4gPj4+Pgo+PiA+Pj4+IERv
dWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4+ID4+Pj4KPj4g
Pj4+PiA+IEluIGNvbW1pdCAyOWY2NTg5MTQwYTEgKCJicmNtZm1hYzogZGlzYWJsZSBjb21tYW5k
IGRlY29kZSBpbgo+PiA+Pj4+ID4gc2Rpb19hb3MiKSB3ZSBkaXNhYmxlZCBzb21ldGhpbmcgY2Fs
bGVkICJjb21tYW5kIGRlY29kZSBpbiBzZGlvX2FvcyIKPj4gPj4+PiA+IGZvciBhIHdob2xlIGJ1
bmNoIG9mIEJyb2FkY29tIFNESU8gV2lGaSBwYXJ0cy4KPj4gPj4+PiA+Cj4+ID4+Pj4gPiBBZnRl
ciB0aGF0IHBhdGNoIGxhbmRlZCBJIGZpbmQgdGhhdCBteSBrZXJuZWwgbG9nIG9uCj4+ID4+Pj4g
PiByazMyODgtdmV5cm9uLW1pbm5pZSBhbmQgcmszMjg4LXZleXJvbi1zcGVlZHkgaXMgZmlsbGVk
IHdpdGg6Cj4+ID4+Pj4gPiAgIGJyY21mbWFjOiBicmNtZl9zZGlvX2J1c19zbGVlcDogZXJyb3Ig
d2hpbGUgY2hhbmdpbmcgYnVzIHNsZWVwCj4+ID4+Pj4gc3RhdGUgLTExMAo+PiA+Pj4+ID4KPj4g
Pj4+PiA+IFRoaXMgc2VlbXMgdG8gaGFwcGVuIGV2ZXJ5IHRpbWUgdGhlIEJyb2FkY29tIFdpRmkg
dHJhbnNpdGlvbnMgb3V0IG9mCj4+ID4+Pj4gPiBzbGVlcCBtb2RlLiAgUmV2ZXJ0aW5nIHRoZSBw
YXJ0IG9mIHRoZSBjb21taXQgdGhhdCBhZmZlY3RzIHRoZQo+PiA+Pj4+IFdpRmkgb24KPj4gPj4+
PiA+IG15IGJvYXJkcyBmaXhlcyB0aGUgcHJvYmxlbSBmb3IgbWUsIHNvIHRoYXQncyB3aGF0IHRo
aXMgcGF0Y2ggZG9lcy4KPj4gPj4+PiA+Cj4+ID4+Pj4gPiBOb3RlIHRoYXQsIGluIGdlbmVyYWws
IHRoZSBqdXN0aWZpY2F0aW9uIGluIHRoZSBvcmlnaW5hbCBjb21taXQKPj4gPj4+PiBzZWVtZWQK
Pj4gPj4+PiA+IGEgbGl0dGxlIHdlYWsuICBJdCBsb29rZWQgbGlrZSBzb21lb25lIHdhcyB0ZXN0
aW5nIG9uIGEgU0QgY2FyZAo+PiA+Pj4+ID4gY29udHJvbGxlciB0aGF0IHdvdWxkIHNvbWV0aW1l
cyBkaWUgaWYgdGhlcmUgd2VyZSBDUkMgZXJyb3JzIG9uIHRoZQo+PiA+Pj4+ID4gYnVzLiAgVGhp
cyB1c2VkIHRvIGhhcHBlbiBiYWNrIGluIGVhcmx5IGRheXMgb2YgZHdfbW1jICh0aGUKPj4gPj4+
PiBjb250cm9sbGVyCj4+ID4+Pj4gPiBvbiBteSBib2FyZHMpLCBidXQgd2UgZml4ZWQgaXQuICBE
aXNhYmxpbmcgYSBmZWF0dXJlIG9uIGFsbCBib2FyZHMKPj4gPj4+PiA+IGp1c3QgYmVjYXVzZSBv
bmUgU0QgY2FyZCBjb250cm9sbGVyIGlzIGJyb2tlbiBzZWVtcyBiYWQuICAuLi5zbwo+PiA+Pj4+
ID4gaW5zdGVhZCBvZiBqdXN0IHRoaXMgcGF0Y2ggcG9zc2libHkgdGhlIHJpZ2h0IHRoaW5nIHRv
IGRvIGlzIHRvIGZ1bGx5Cj4+ID4+Pj4gPiByZXZlcnQgdGhlIG9yaWdpbmFsIGNvbW1pdC4KPj4g
Pj4+PiA+Cj4+IFNpbmNlIHRoZSBjb21taXQgMjlmNjU4OTE0MGExICgiYnJjbWZtYWM6IGRpc2Fi
bGUgY29tbWFuZCBkZWNvZGUgaW4KPj4gc2Rpb19hb3MiKSBjYXVzZXMgdGhlIHJlZ3Jlc3Npb24g
b24gb3RoZXIgU0QgY2FyZCBjb250cm9sbGVyLCBpdCBpcwo+PiBiZXR0ZXIgdG8gcmV2ZXJ0IGl0
IGFzIHlvdSBtZW50aW9uZWQuCj4+IEFjdHVhbGx5LCB3aXRob3V0IHRoZSBjb21taXQsIHdlIGhp
dCBNTUMgdGltZW91dCgtMTEwKSBhbmQgaGFuZ2VkCj4+IGluc3RlYWQgb2YgQ1JDIGVycm9yIGlu
IG91ciB0ZXN0Lgo+Cj4gQW55IGNoYW5jZSBJIGNhbiBjb252aW5jZSB5b3UgdG8gcHJvdmlkZSBz
b21lIG9mZmljaWFsIHRhZ3MgbGlrZQo+IFJldmlld2VkLWJ5IG9yIFRlc3RlZC1ieSBvbiB0aGUg
cmV2ZXJ0Pwo+Cj4+IFdvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIGFuYWx5c2lzIG9mCj4+IGR3
X21tYyBpc3N1ZSB3aGljaCB5b3UgZml4ZWQ/IFdlJ2QgbGlrZSB0byBjb21wYXJlIHdoZXRoZXIg
d2UgZ290IHRoZQo+PiBzYW1lIGlzc3VlLgo+Cj4gSSdtIG5vdCBzdXJlIHRoZXJlJ3MgYW55IHNp
bmdsZSBtYWdpYyBjb21taXQgSSBjYW4gcG9pbnQgdG8uICBXaGVuIEkKPiBzdGFydGVkIHdvcmtp
bmcgb24gZHdfbW1jIGl0IHdhcyB0ZXJyaWJsZSBhdCBoYW5kbGluZyBlcnJvciBjYXNlcyBhbmQK
PiB3b3VsZCBvZnRlbiBjcmFzaCAvIGhhbmcgLyBzdG9wIGFsbCBmdXR1cmUgY29tbXVuaWNhdGlv
biB1cG9uIGNlcnRhaW4KPiBjbGFzc2VzIG9yIGVmZm9ydHMuICBUaGVyZSB3ZXJlIGRvemVucyBv
ZiBwcm9ibGVtcyB3ZSd2ZSBoYWQgdG8gZml4Cj4gb3ZlciB0aGUgeWVhcnMuICBUaGVzZSBwcm9i
bGVtcyBzaG93ZWQgdXAgd2hlbiB3ZSBzdGFydGVkIHN1cHBvcnRpbmcKPiBIUzIwMCAvIFVIUyBz
aW5jZSB0aGUgdHVuaW5nIHBoYXNlIHJlYWxseSBzdHJlc3MgdGhlIGVycm9yIGhhbmRsaW5nIG9m
Cj4gdGhlIGhvc3QgY29udHJvbGxlci4KPgo+IEkgc2VhcmNoZWQgYW5kIGJ5IHRoZSB0aW1lIHdl
IHdlcmUgc3VwcG9ydGluZyBCcm9hZGNvbSBTRElPIGNhcmRzIHRoZQo+IGVycm9yIGhhbmRsaW5n
IHdhcyBhbHJlYWR5IHByZXR0eSBnb29kLiAgLi4uYnV0IGlmIHdlIGhhZG4ndCBhbHJlYWR5Cj4g
bWFkZSB0aGUgZXJyb3IgaGFuZGxpbmcgbW9yZSByb2J1c3QgZm9yIFVIUyB0dW5pbmcgdGhlbiB3
ZSB3b3VsZCBoYXZlCj4gZGVmaW5pdGVseSBoaXQgdGhlc2UgdHlwZXMgb2YgcHJvYmxlbXMuICBU
aGUgb25seSBwcm9ibGVtIEkgcmVtZW1iZXIKPiBoYXZpbmcgdG8gc29sdmUgaW4gZHdfbW1jIHRo
YXQgd2FzIHVuaXF1ZSB0byBCcm9hZGNvbSB3YXMgY29tbWl0Cj4gMGJkYmQwZTg4Y2Y2ICgibW1j
OiBkd19tbWM6IERvbid0IHN0YXJ0IGNvbW1hbmRzIHdoaWxlIGJ1c3kiKS4gIEFueQo+IGNoYW5j
ZSB0aGF0IGNvdWxkIGJlIHdoYXQgeW91J3JlIGhpdHRpbmc/CgpUaGF0IGlzIGluZGVlZCBhbiBp
c3N1ZSBJIHJlY2FsbCByZXN1bHRpbmcgaW4gLTExMCBlcnJvcnMuCgo+IFdoYXQgaG9zdCBjb250
cm9sbGVyIGFyZSB5b3UgaGF2aW5nIHByb2JsZW1zIHdpdGg/CgpLbm93aW5nIHRoYXQgd2lsbCBi
ZSBhIGdvb2Qgc3RhcnQuCgpSZWdhcmRzLApBcmVuZAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

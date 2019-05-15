Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861FE1F871
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 18:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xElIQGFxsSVlAQAMbc5v03noSSgQDVE9RRH9HsH0G9c=; b=esfokY2fXqxFAu
	Xc6kVJA+S/4YlCrjJ0aDg5beJsx1p1t+xi4sDS0F4GAFMSK+Iojzx6znbeioP2NzbQrVux2AYBptO
	3foNPMqqrRYzduIJIfOOUSue6kwtD0rg2hN5RxdpaKDxmw7tBMEMttbEYXzaFRg3esWcThdbqZMts
	hBDw+oQwEt97OXS5UMp/T5Ah3TSa0QGPdq4O9cY4IXx9n2VjCiPAamyVoF0TL8Z2uPcwd1cqwHGD4
	z8lrsRJfAvaAbxI5yxFAzmktYExAuLsxnMIhjkjWNuyvyms68BIoFqkltcpeezxjgX4gYfUBiO/cW
	TBIHq2kK4b4dPVQ3e+3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwgc-0008T4-I3; Wed, 15 May 2019 16:23:22 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwgZ-0008Sj-Cn
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 16:23:20 +0000
Received: by mail-vs1-xe44.google.com with SMTP id y6so347355vsb.0
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 09:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XibrizVK+x4gwJRznLKLxYNtzx6v60+igfS3HoIEayQ=;
 b=czft9FTmE5tMVE8dOINVb8LBbsa35P48tLVdr892dOMLRa4VB1coebG0BKnTxX5Cka
 6m1J4wFkHSi7VzolqLIgckMP6rlJbSJD+yfgb6Cih4Pe7Mqr04yeQhzIn8xXjqs0SOoI
 ZmDyr6hSfcx3TYTP7yv3gAaimFJ6Y3azQMq+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XibrizVK+x4gwJRznLKLxYNtzx6v60+igfS3HoIEayQ=;
 b=WSHQuo6vv2aGT+3+uaADv/jJDPRPMNkzmDzD/m/Cp1E0gEvstuYYIToq05j4MjxjBR
 crquu1C1VlQVGndN+p9Yzl0gfZbjFP3Xa7X1RpGXkpT1x86yr6LeGvLG+cs0l8QgB1bQ
 pBmaaIQEYGtRtGTrXNYfw9V28+3TX58nlWq9eFQD2sbvIPU6ojkR22qS2SR1dko3Kp3y
 BWQmgHTO609c2UF6DnzQuFpmg1OLU2Ml32hjMS8DJqYsUFHHKL4Fycn3M9ikNkbOwD+F
 FYks99/xUWrzEOCaGL1+3JzIScFws2nX3Eh+rF+kRLehYmCZNfvNsHjreDq0o2lCB3Vo
 1d6w==
X-Gm-Message-State: APjAAAUffM0HOkJmaQSI7E3iW2zcnADq+Qa+RkKSTSEWVDxPcMD0qAZm
 ppd1sYTKpTeiro3ZxTSO20QSHV4t7WM=
X-Google-Smtp-Source: APXvYqy6LvYGmWHsDf0OS0ReUeKY+VQhT2Ce38KS3EdQlHlK1v9Uhqr7OuCwY7+LRtJjVnizkplF8g==
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr5785620vso.87.1557937397970; 
 Wed, 15 May 2019 09:23:17 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com.
 [209.85.217.52])
 by smtp.gmail.com with ESMTPSA id 9sm1034637vkk.43.2019.05.15.09.23.09
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 09:23:10 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id o5so331105vsq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 09:23:09 -0700 (PDT)
X-Received: by 2002:a67:f60b:: with SMTP id k11mr13708286vso.111.1557937389222; 
 Wed, 15 May 2019 09:23:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190502223808.185180-1-dianders@chromium.org>
In-Reply-To: <20190502223808.185180-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 09:22:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W2BvvEx+sYji5pGAEwagD6uA20nCMKwiU=kD6FqkSLiw@mail.gmail.com>
Message-ID: <CAD=FV=W2BvvEx+sYji5pGAEwagD6uA20nCMKwiU=kD6FqkSLiw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: bridge: dw-hdmi: Add hooks for suspend/resume
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_092319_456323_DDADFF12 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Zheng Yang <zhengyang@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkKCkZyb206IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KRGF0ZTog
VGh1LCBNYXkgMiwgMjAxOSBhdCAzOjM4IFBNClRvOiBIZWlrbyBTdHVlYm5lciwgU2FuZHkgSHVh
bmcsIEFuZHJ6ZWogSGFqZGEsIExhdXJlbnQgUGluY2hhcnQKQ2M6IDxsaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnPiwgTmVpbCBBcm1zdHJvbmcsCjxta2FAY2hyb21pdW0ub3JnPiwg
U2VhbiBQYXVsLCBEb3VnbGFzIEFuZGVyc29uLCBaaGVuZyBZYW5nLCBTYW0KUmF2bmJvcmcsIDxk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiwKPGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc+LCBWaWxsZSBTeXJqw6Rsw6QsIERhdmlkIEFpcmxpZSwgSmVybmVqClNrcmFiZWMsIERh
bmllbCBWZXR0ZXIKCj4gT24gUm9ja2NoaXAgcmszMjg4LWJhc2VkIENocm9tZWJvb2tzIHdoZW4g
eW91IGRvIGEgc3VzcGVuZC9yZXN1bWUKPiBjeWNsZToKPgo+IDEuIFlvdSBsb3NlIHRoZSBhYmls
aXR5IHRvIGRldGVjdCBhbiBIRE1JIGRldmljZSBiZWluZyBwbHVnZ2VkIGluLgo+Cj4gMi4gSWYg
eW91J3JlIHVzaW5nIHRoZSBpMmMgYnVzIGJ1aWx0IGluIHRvIGR3X2hkbWkgdGhlbiBpdCBzdG9w
cwo+IHdvcmtpbmcuCj4KPiBMZXQncyBhZGQgYSBob29rIHRvIHRoZSBjb3JlIGR3LWhkbWkgZHJp
dmVyIHNvIHRoYXQgd2UgY2FuIGNhbGwgaXQgaW4KPiBkd19oZG1pLXJvY2tjaGlwIGluIHRoZSBu
ZXh0IGNvbW1pdC4KPgo+IE5PVEU6IHRoZSBleGFjdCBzZXQgb2Ygc3RlcHMgSSd2ZSBkb25lIGhl
cmUgaW4gcmVzdW1lIGNvbWUgZnJvbQo+IGxvb2tpbmcgYXQgdGhlIG5vcm1hbCBkd19oZG1pIGlu
aXQgc2VxdWVuY2UgaW4gdXBzdHJlYW0gTGludXggcGx1cyB0aGUKPiBzZXF1ZW5jZSB0aGF0IHdl
IGRpZCBpbiBkb3duc3RyZWFtIENocm9tZSBPUyAzLjE0LiAgVGVzdGluZyBzaG93IHRoYXQKPiBp
dCBzZWVtcyB0byB3b3JrLCBidXQgaWYgYW4gZXh0cmEgc3RlcCBpcyBuZWVkZWQgb3Igc29tZXRo
aW5nIGhlcmUgaXMKPiBub3QgbmVlZGVkIHdlIGNvdWxkIGltcHJvdmUgaXQuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4gLS0tCj4K
PiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgfCAyMSArKysrKysr
KysrKysrKysrKysrKysKPiAgaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaCAgICAgICAgICAg
ICAgfCAgMyArKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCgpEaWQgYW55
b25lIGhhdmUgYW55IHRob3VnaHRzIG9uIHRoaXMgcGF0Y2ggc2VyaWVzPyAgVGhhbmtzISAgOi0p
CgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC00D6DB6
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 05:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeulfhgFsqR7dT/YMEkoKdSrgwVtkkcPgWYBnqM61Uc=; b=cnl6ZB7yvsiVst
	QqiRJOvPzZ2Q8k1HYrO9IhY2px1a3xCLVLZlLijT0PoQvgb9K1kPoyDgZjqJ5P0Lyq2gfmQUaij+w
	cZTU7ObX476jm4JJw4LdWL1mSuGVe/aS39rRs4MiVkaKIU2P1KVt6ZuPotpqGF3MmIxb2ajRP5GAa
	EhUffuzb182ZzO81u/+1OTqcjTTxIKLeZrrBkBhq9niIHOOASxZIsi7AjofLuoT/fsGoVW8jqqFmC
	y+A4n78vPKpNcOJ24hI75bql5rgmJMWJVYiTuL3HE9T1e4yZEItPb2ZZVe6jBYjojnc3BPe359M4z
	xk5+eYrz0v0m4oL0ducA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDV4-0006Hj-T1; Tue, 15 Oct 2019 03:27:54 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDV0-0006Gr-Rp
 for linux-rockchip@lists.infradead.org; Tue, 15 Oct 2019 03:27:52 +0000
Received: by mail-ed1-x542.google.com with SMTP id h33so16544379edh.12
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Oct 2019 20:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YVPytTWHt8mFoi/ykGbrP0trwQRYqXcPKOUsZYejpz0=;
 b=PSKWNoiQI7P2JrAnmZCiTSgVzPC2o2fcfeEnYQfZvWpZFU9ynIIProhbzJ65NurZb8
 GME6b6LCf/14PkTKQLv5zbnx2l7GuZfeYhdSFcnck6rLibElMKdgKq6zpn2TCXK7UvCh
 uxEQcudhe2hEm3v0IPz3ZrfmlH4DSnEFTqZG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YVPytTWHt8mFoi/ykGbrP0trwQRYqXcPKOUsZYejpz0=;
 b=pTW+kpigMC4T70N1798Zzd9Ym/GAZ7rCMEva3y6SjjnDjG6eOTWUgY8KCH3L3m+4Hr
 8/i5+TngPPgzw4IvNHBGXg/IbYHwLjDwXKCVQoiwD5rpptVpNtgcN6GfF0M9f60oTWoq
 EuVqlY7sxAa/xUbYwOSFP1BjRcK5c2NHKflBYnG0XbsFjFmX17MkvJtYN+Ns8DKQkXjg
 ngY1pnU7uaK0zeO97JDOcdZI9vb13DbMoqNy6Ox7XXBfS8sPQ+Afb6IP5p7Qiz55WU0Q
 xbjVIxWZ65bjhAmABeokOxiRP57OHFqyI7A7xGWxhui0OTJ0UNYQCDVcXpbRzyF/r9wJ
 IiBg==
X-Gm-Message-State: APjAAAUVSDGHqIPQpZAzEiWzVA6ZRLIl3BZnL645CflLtgq7QhoDRB2y
 1S0fxI2TTLE5W8j5x6FMnIz3gjzIYUqFcw==
X-Google-Smtp-Source: APXvYqy16ygYMxCrMAdcZBDDklFS3FIkYR21gwJwinWP00sHIP8Cio18/MXY+OQ8YFK+So7QCZkd3g==
X-Received: by 2002:a05:6402:1612:: with SMTP id
 f18mr31678959edv.66.1571110066262; 
 Mon, 14 Oct 2019 20:27:46 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43])
 by smtp.gmail.com with ESMTPSA id e13sm2537161eje.52.2019.10.14.20.27.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 20:27:45 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id r17so1292882wme.0
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Oct 2019 20:27:45 -0700 (PDT)
X-Received: by 2002:a1c:dcd6:: with SMTP id t205mr17526191wmg.10.1571110064602; 
 Mon, 14 Oct 2019 20:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com>
 <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
 <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com>
 <0d40f89059cd5aba96adcdd24340636df3315592.camel@collabora.com>
In-Reply-To: <0d40f89059cd5aba96adcdd24340636df3315592.camel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 15 Oct 2019 12:27:32 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Aj1fh5MbT1B8HZQmwYOSRr6C68uHmAPJ+5dec1K-szEA@mail.gmail.com>
Message-ID: <CAAFQd5Aj1fh5MbT1B8HZQmwYOSRr6C68uHmAPJ+5dec1K-szEA@mail.gmail.com>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_202750_926010_ECFCADC5 
X-CRM114-Status: GOOD (  31.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "fbuergisser@chromium.org" <fbuergisser@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "kernel@collabora.com" <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgNzoxMCBBTSBOaWNvbGFzIER1ZnJlc25lCjxuaWNvbGFz
LmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gTGUgamV1ZGkgMTAgb2N0b2JyZSAy
MDE5IMOgIDE2OjIzICswOTAwLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6Cj4gPiBPbiBUdWUsIE9j
dCA4LCAyMDE5IGF0IDExOjEyIFBNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3Jv
dGU6Cj4gPiA+IE9uIDIwMTktMTAtMDggMTU6NTMsIFRvbWFzeiBGaWdhIHdyb3RlOgo+ID4gPiA+
IE9uIFR1ZSwgT2N0IDgsIDIwMTkgYXQgMTA6MzUgUE0gVG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9t
aXVtLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIE9jdCA4LCAyMDE5IGF0IDc6NDIgUE0g
VG9tYXN6IEZpZ2EgPHRmaWdhQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1
ZSwgT2N0IDgsIDIwMTkgYXQgMzozMSBQTSBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+
IHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIDIwMTktMTAtMDggMDc6MjcsIFRvbWFzeiBGaWdhIHdy
b3RlOgo+ID4gPiA+ID4gPiA+ID4gSGkgRXplcXVpZWwsIEpvbmFzLAo+ID4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgT2N0IDgsIDIwMTkgYXQgMjo0NiBBTSBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiBG
cm9tOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPiA+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gPiA+IFRSTSBzcGVjaWZ5IHN1cHBvcnRlZCBpbWFnZSBzaXplIDQ4eDQ4IHRv
IDQwOTZ4MjMwNCBhdCBzdGVwIHNpemUgMTYgcGl4ZWxzLAo+ID4gPiA+ID4gPiA+ID4gPiBjaGFu
Z2UgZnJtc2l6ZSBtYXhfd2lkdGgvbWF4X2hlaWdodCB0byBtYXRjaCBUUk0uCj4gPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEZpeGVzOiA3NjAzMjc5MzBlMTAgKCJtZWRpYTogaGFu
dHJvOiBFbmFibGUgSDI2NCBkZWNvZGluZyBvbiByazMyODgiKQo+ID4gPiA+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPiA+ID4gPiA+
ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ID4gPiB2MjoKPiA+ID4gPiA+ID4gPiA+ID4gKiBObyBj
aGFuZ2VzLgo+ID4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9yazMyODhfdnB1X2h3LmMgfCA0ICsrLS0KPiA+ID4gPiA+ID4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vcmszMjg4X3ZwdV9ody5jCj4gPiA+ID4gPiA+ID4gPiA+IGluZGV4IDZiZmNjNDdkMWU1
OC4uZWJiMDE3YjhhMzM0IDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYwo+ID4gPiA+ID4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYwo+ID4gPiA+ID4g
PiA+ID4gPiBAQCAtNjcsMTAgKzY3LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2Zt
dCByazMyODhfdnB1X2RlY19mbXRzW10gPSB7Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAg
ICAgICAubWF4X2RlcHRoID0gMiwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgIC5m
cm1zaXplID0gewo+ID4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAubWlu
X3dpZHRoID0gNDgsCj4gPiA+ID4gPiA+ID4gPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIC5t
YXhfd2lkdGggPSAzODQwLAo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAubWF4X3dpZHRoID0gNDA5NiwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgLnN0ZXBfd2lkdGggPSBIMjY0X01CX0RJTSwKPiA+ID4gPiA+ID4gPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgLm1pbl9oZWlnaHQgPSA0OCwKPiA+ID4gPiA+ID4gPiA+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgLm1heF9oZWlnaHQgPSAyMTYwLAo+ID4gPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAubWF4X2hlaWdodCA9IDIzMDQsCj4gPiA+ID4gPiA+
ID4gPiBUaGlzIGRvZXNuJ3QgbWF0Y2ggdGhlIGRhdGFzaGVldCBJIGhhdmUsIHdoaWNoIGlzIFJL
MzI4OCBEYXRhc2hlZXQgUmV2Cj4gPiA+ID4gPiA+ID4gPiAxLjQgYW5kIHdoaWNoIGhhcyB0aGUg
dmFsdWVzIGFzIGluIGN1cnJlbnQgY29kZS4gV2hhdCdzIHRoZSBvbmUgeW91Cj4gPiA+ID4gPiA+
ID4gPiBnb3QgdGhlIHZhbHVlcyBmcm9tPwo+ID4gPiA+ID4gPiA+IFRoZSBSSzMyODggVFJNIHZj
b2RlYyBjaGFwdGVyIGZyb20gWzFdLCB1bmtub3duIHJldmlzaW9uIGFuZCBkYXRlLCBsaXN0cyA0
OHg0OCB0byA0MDk2eDIzMDQgc3RlcCBzaXplIDE2IHBpeGVscyB1bmRlciAyNS41LjEgSC4yNjQg
ZGVjb2Rlci4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEkgY2FuIGFsc28gY29uZmlybSB0
aGF0IG9uZSBvZiBteSB0ZXN0IHNhbXBsZXMgKFBVUFBJRVMgQkFUSCBJTiA0SykgaXMgNDA5Nngy
MzA0IGFuZCBjYW4gYmUgZGVjb2RlZCBhZnRlciB0aGlzIHBhdGNoLgo+ID4gPiA+ID4gPiA+IEhv
d2V2ZXIgdGhlIGRlY29kaW5nIHNwZWVkIGlzIG5vdCBvcHRpbWFsIGF0IDQwME1oeiwgaWYgSSBy
ZWNhbGwgY29ycmVjdGx5IHlvdSBuZWVkIHRvIHNldCB0aGUgVlBVMSBjbG9jayB0byA2MDBNaHog
Zm9yIDRLIGRlY29kaW5nIG9uIFJLMzI4OC4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IEkg
YW0gbm90IHN1cmUgaWYgSSBzaG91bGQgaW5jbHVkZSBhIHYyIG9mIHRoaXMgcGF0Y2ggaW4gbXkg
djIgc2VyaWVzLCBhcy1pcyB0aGlzIHBhdGNoIGRvIG5vdCBhcHBseSBvbiBtYXN0ZXIgKEgyNjRf
TUJfRElNIGhhcyBjaGFuZ2VkIHRvIE1CX0RJTSBpbiBtYXN0ZXIpLgo+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gWzFdIGh0dHA6Ly93d3cudC1maXJlZmx5LmNvbS9kb3dubG9hZC9maXJlZmx5
LXJrMzI4OC9kb2NzL1RSTS9yazMyODgtY2hhcHRlci0yNS12aWRlby1lbmNvZGVyLWRlY29kZXIt
dW5pdC0odmNvZGVjKS5wZGYKPiA+ID4gPiA+ID4gSSBjaGVja2VkIHRoZSBSSzMyODggVFJNIFYx
LjEgdG9vIGFuZCBpdCByZWZlcnMgdG8gMzg0MHgyMTYwQDI0ZnBzIGFzCj4gPiA+ID4gPiA+IHRo
ZSBtYXhpbXVtLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBcyBmb3IgcGVyZm9ybWFuY2UsIHdl
J3ZlIGFjdHVhbGx5IGJlZW4gZ2V0dGluZyBhcm91bmQgMzMgZnBzIGF0IDQwMAo+ID4gPiA+ID4g
PiBNSHogd2l0aCAzODQweDIxNjAgb24gb3VyIGRldmljZXMgKHRoZSBvbGQgUkszMjg4IEFzdXMg
Q2hyb21lYm9vawo+ID4gPiA+ID4gPiBGbGlwKS4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gSSBn
dWVzcyB3ZSBtaWdodCB3YW50IHRvIGNoZWNrIHRoYXQgd2l0aCBIYW50cm8uCj4gPiA+ID4gPiBD
b3VsZCB5b3UgY2hlY2sgdGhlIHZhbHVlIG9mIGJpdHMgMTA6MCBpbiByZWdpc3RlciBhdCAweDBj
OD8gVGhhdAo+ID4gPiA+ID4gc2hvdWxkIGJlIHRoZSBtYXhpbXVtIHN1cHBvcnRlZCBzdHJlYW0g
d2lkdGggaW4gdGhlIHVuaXRzIG9mIDE2Cj4gPiA+ID4gPiBwaXhlbHMuCj4gPiA+ID4gQ29ycmVj
dGlvbjogVGhlIHVuaXQgaXMgMSBwaXhlbCBhbmQgdGhlcmUgYXJlIGFkZGl0aW9uYWwgMiBtb3N0
Cj4gPiA+ID4gc2lnbmlmaWNhbnQgYml0cyBhdCAweDBkOCwgMTU6MTQuCj4gPiA+Cj4gPiA+IEkg
d2lsbCBjaGVjayB0aGlzIGxhdGVyIHRvbmlnaHQgd2hlbiBJIGhhdmUgYWNjZXNzIHRvIG15IGRl
dmljZXMuCj4gPiA+IFRoZSBQVVBQSUVTIEJBVEggSU4gNEsgKDQwOTZ4MjMwNCkgc2FtcGxlIGRl
Y29kZWQgd2l0aG91dCBpc3N1ZSB1c2luZyByb2NrY2hpcCA0LjQgQlNQIGtlcm5lbCBhbmQgbXBw
IGxhc3QgdGltZSBJIHRlc3RlZC4KPiA+ID4KPiA+ID4gVGhlIHZjb2RlYyBkcml2ZXIgaW4gNC40
IEJTUCBrZXJuZWwgdXNlIDMwMC80MDAgTWh6IGFzIGRlZmF1bHQgY2xvY2sgcmF0ZSBhbmQgd2ls
bCBjaGFuZ2UgdG8gNjAwIE1oeiB3aGVuIHdpZHRoIGlzIG92ZXIgMjU2MCwgc2VlIFsxXToKPiA+
ID4gICByYWlzZSBmcmVxdWVuY3kgZm9yIHJlc29sdXRpb24gbGFyZ2VyIHRoYW4gMTQ0MHAgYXZj
Cj4gPiA+Cj4gPiA+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVs
L2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy92aWRlby9yb2NrY2hpcC92Y29kZWMvdmNvZGVjX3Nl
cnZpY2UuYyNMMjU1MS1MMjU3MAo+ID4KPiA+IEhvdyBjb21lcyBpdCB3b3JrcyBmb3IgdXMgd2Vs
bCBhdCA0MDAgTUh6PyBCZXR0ZXIgRFJBTT8gRGlmZmVyZW5jZXMgaW4KPiA+IGhvdyBWY29kZWMg
QlNQIGhhbmRsZXMgdGhlIGhhcmR3YXJlIHRoYXQgc29tZWhvdyBtYWtlIHRoZSBkZWNvZGluZwo+
ID4gc2xvd2VyPwo+Cj4gRldJVywgaGVyZSBvbiB0aGUgbWFpbmxpbmUgZHJpdmVyLCBvbiBSSzMy
ODgsIHBsYXlpbmcgYSA0SzMwIHNhbXBsZQo+IChwcm9iYWJseSB0aGUgbWF4IGZvciB0aGlzIG9u
ZSkgZ2V0IHN0dWNrIGF0IDIwZnBzIHdpdGggNDAwTUh6LiBTbwo+IDYwME1IeiB3b3VsZCBpbiB0
aGVvcnkgYmUgcGVyZmVjdCB0byByZWFjaCAzMGZwcy4gVGhhdCBiZWluZyBzYWlkLAo+IGRpZmZl
cmVudCBzdHJlYW0geWllbGQgZGlmZmVyZW50IHBlcmZvcm1hbmNlIHdpdGggSDI2NCBhbmQgb3Ro
ZXIKPiBDT0RFQ3MsIHNvIGRvaW5nIGEgY29tcGxldGVseSBvYmplY3RpdmUgZXZhbHVhdGlvbiBp
cyBoYXJkLgoKRm9yIGEgZmFpciBjb21wYXJpc29uLCB3ZSdyZSB1c2luZyB0aGUgZm9sbG93aW5n
IHN0cmVhbSBpbiBvdXIgNEsKcGVyZm9ybWFuY2UgdGVzdDoKaHR0cDovL3N0b3JhZ2UuZ29vZ2xl
YXBpcy5jb20vY2hyb21pdW1vcy10ZXN0LWFzc2V0cy1wdWJsaWMvdGFzdC9jcm9zL3ZpZGVvL3Bl
cmYvaDI2NC8yMTYwcF8zMGZwc18zMDBmcmFtZXNfMjAxOTA4MDEuaDI2NAoKQmVzdCByZWdhcmRz
LApUb21hc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

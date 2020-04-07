Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7671A1612
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Apr 2020 21:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4xeY/WvzuCYcn3bc6baEKey+wl/ibMy04WMclNE9uc=; b=LAQlnkAQLZmROQ
	+ZzirbSjoShu+j1EblvBev8W8bewn1qlkDSvs3pdC13aHmsI1xw0iys2Ad78m6HKVAVaTcqGvBh5A
	odLje4iS3DX1aDmHreBYENxxzS8XjrYqR+z9dTJhaR7aZ8e4xmJAOfW/eGn2o+jbtskMNd/g0Ncw7
	pTzhuhZqE3iE/sJCWusONqVhVGlftrNMvwL0WPVx0t7WF3kfHvaig9DAee5m09dFAfVFp77Cp/mWj
	xb57/4nxl8G89qNDnXi/qOJjDtydBf8BQwMEEIEWqemOtN5Mxlc77afUZjBaw8JqO4R8TOh8WhPe/
	xtd5G1MCWwpuLkJBxejg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLu1X-0005fL-2B; Tue, 07 Apr 2020 19:36:39 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLu1T-0005eR-Hm
 for linux-rockchip@lists.infradead.org; Tue, 07 Apr 2020 19:36:37 +0000
Received: by mail-qv1-xf41.google.com with SMTP id z13so2462753qvw.3
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2020 12:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=pCLPL0JnUyOXfXfamhd1KYiAt+I94C6hDARt0PzER6M=;
 b=iv4SUzZ+wPaPvelHvTIV/L7sT6/Ses0zb2Tbg+j76RBsT5yQeyxbztpRsppzh8SVI1
 imum52orGD4bWHHbBs4eNRNnuNFF8E3tIl/UIO6WIpCzmDI/P5eVImng6cov8Uqi/+HL
 /5J3KM7F+wWNKIUvlhy1db1u8ZNkEAQku4YvQ4bU/qFwViuRK7ptwyrLCu57CaixN0Pc
 G4xvL1byUnLF4ItCpYaROQ4kk/x0yVWf+6ZRPELbITWpFzHWJAlSB2DRKhW5HoKVAUuY
 qMEGoJ3IxOoQ7dsNDu5Ip7fy/eZPJDQrcnPrmA08baBxG7OQQ+Po+aiybxjC7dEETmdV
 Zxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=pCLPL0JnUyOXfXfamhd1KYiAt+I94C6hDARt0PzER6M=;
 b=b1r5gnz2MBxm5Y305UqdDpO5Y27wueQW0pcFnoYhCjXjjj9O3UNYKEPCverm0dXzT2
 UkIk8LE/dmJhuXqpwc4JXME5YOLGQDm2SI3XpElxryaqAMgjCPmEzz+KprI9WhIYDcj0
 u9NSAhsMvYZ3HlPLm0wPfZX4VAHrmIwPl6jG8xftH2xTL/5m0Dt55N55HpM9gjnRackM
 SPAwQOSTIE5FfnT0xw3mZV4oGf/u7Mpmx+zoubRZYeIyupM7L2+J0/kCRGgLRcp0+ku/
 AI4B8W1hZimEFQWd0JzXtGK6/h6oO8lxLQ1cn948tsl0dUkhR+GkpOVye/yUWNALgUbh
 /Dsg==
X-Gm-Message-State: AGi0PuawWUHoQ7JfDrCxCkcVM27P1cR+WU9MpWxqHasZrjQ5WUa3WDfY
 zCggXED6WHoZ8QaOo2M1S2XhUQ==
X-Google-Smtp-Source: APiQypK74epx4+Z0DDlpxpU9KwxL4Jh/72vQvUCksY2TgaoTyWLqAOPtXgI8bV1dGPwkGhaQbLL6Vg==
X-Received: by 2002:a05:6214:12f1:: with SMTP id
 w17mr3807952qvv.132.1586288194290; 
 Tue, 07 Apr 2020 12:36:34 -0700 (PDT)
Received: from skullcanyon ([192.222.193.21])
 by smtp.gmail.com with ESMTPSA id m5sm16364954qtk.85.2020.04.07.12.36.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 12:36:33 -0700 (PDT)
Message-ID: <abe902f2ebdfa41bd4d99b7beb3b6c7ec91d2a8f.camel@ndufresne.ca>
Subject: Re: [PATCH v8 4/5] media: rkvdec: Add the rkvdec driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 07 Apr 2020 15:36:32 -0400
In-Reply-To: <5c417620e1baeed7ec4ac750ab481366df2aa590.camel@collabora.com>
References: <20200403221345.16702-1-ezequiel@collabora.com>
 <20200403221345.16702-5-ezequiel@collabora.com>
 <CAKQmDh_pCX_s2Ze7b1YBqgvEZHNrgzDUfcjPos8_GZq8x6=5Ng@mail.gmail.com>
 <5c417620e1baeed7ec4ac750ab481366df2aa590.camel@collabora.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_123635_615655_20C0C499 
X-CRM114-Status: GOOD (  31.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 DVB_Linux_Media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWFyZGkgMDcgYXZyaWwgMjAyMCDDoCAxMTozNSAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIGEg
w6ljcml0IDoKPiBPbiBNb24sIDIwMjAtMDQtMDYgYXQgMTY6MjcgLTA0MDAsIE5pY29sYXMgRHVm
cmVzbmUgd3JvdGU6Cj4gPiBMZSB2ZW4uIDMgYXZyLiAyMDIwIMOgIDE4OjE0LCBFemVxdWllbCBH
YXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IGEgw6ljcml0IDoKPiA+ID4gRnJvbTogQm9y
aXMgQnJlemlsbG9uIDxib3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiA+ID4gCj4gPiA+
IFRoZSByb2NrY2hpcCB2ZGVjIGJsb2NrIGlzIGEgc3RhdGVsZXNzIGRlY29kZXIgdGhhdCdzIGFi
bGUgdG8gZGVjb2RlCj4gPiA+IEgyNjQsIEhFVkMgYW5kIFZQOSBjb250ZW50LiBUaGlzIGNvbW1p
dCBhZGRzIHRoZSBjb3JlIGluZnJhc3RydWN0dXJlCj4gPiA+IGFuZCB0aGUgSDI2NCBiYWNrZW5k
LiBTdXBwb3J0IGZvciBWUDkgYW5kIEhFVlMgd2lsbCBiZSBhZGRlZCBsYXRlciBvbi4KPiA+ID4g
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNv
bGxhYm9yYS5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVp
ZWxAY29sbGFib3JhLmNvbT4KPiA+IAo+ID4gU29ycnkgZm9yIHRoZSBsYXRlIGZlZWRiYWNrIChn
b3QgYSBjb21tZW50IGxvd2VyKSAuLi4KPiA+IAo+ID4gVGVzdGVkLWJ5OiBOaWNvbGFzIER1ZnJl
c25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4gPiAKPiAKPiBOaWNlLCB0aGFu
ayB5b3UuCj4gCj4gPiA+IC0tCj4gPiA+IHY4Ogo+ID4gPiAqIEZpeCBrZnJlZSBhbmQgc3R5bGUg
Y2hhbmdlcywgYXMgc3VnZ2VzdGVkIGJ5IEFuZHJpeS4KPiA+ID4gdjc6Cj4gPiA+ICogaHZlcmt1
aWwtY2lzY29AeHM0YWxsLm5sOiByZXBsYWNlZCBWRkxfVFlQRV9HUkFCQkVSIGJ5IF9WSURFTwo+
ID4gPiAqIFVzZSBtYWNyb3MgYW5kIEFSUkFZX1NJWkUgaW5zdGVhZCBvZiBtYWdpYyBudW1iZXJz
LAo+ID4gPiAgIGFzIHN1Z2dlc3RlZCBieSBNYXVyby4KPiA+ID4gKiBSZW5hbWVkIE1fTiBtYWNy
bywgc3VnZ2VzdGVkIGJ5IE1hdXJvLgo+ID4gPiAqIFVzZSB2NGwyX20ybV9idWZfZG9uZV9hbmRf
am9iX2ZpbmlzaC4KPiA+ID4gKiBTZXQgYnVmZmVycycgemVyb3RoIHBsYW5lIHBheWxvYWQgaW4g
LmJ1Zl9wcmVwYXJlCj4gPiA+ICogUmVmYWN0b3IgdHJ5L3NfZm10IGZvciBzcGVjIGNvbXBsaWFu
Y2UuCj4gPiA+IC0tLQo+ID4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgICAgNyArCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvS2NvbmZpZyAgICAg
ICAgICAgICAgfCAgICAyICsKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9NYWtlZmlsZSAg
ICAgICAgICAgICB8ICAgIDEgKwo+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9L
Y29uZmlnICAgICAgIHwgICAxNSArCj4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
L01ha2VmaWxlICAgICAgfCAgICAzICsKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvVE9ETyAgICAgICAgICB8ICAgMTEgKwo+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYy9ya3ZkZWMtaDI2NC5jIHwgMTE1NiArKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtcmVncy5oIHwgIDIyMyArKysrCj4gPiA+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jICAgICAgfCAxMTAzICsrKysr
KysrKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVj
LmggICAgICB8ICAxMjEgKysKPiA+ID4gIDEwIGZpbGVzIGNoYW5nZWQsIDI2NDIgaW5zZXJ0aW9u
cygrKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvS2NvbmZpZwo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9ya3ZkZWMvTWFrZWZpbGUKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmt2ZGVjL1RPRE8KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0
YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1yZWdzLmgKPiA+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMu
aAo+ID4gPiAKPiBbLi5dCj4gPiA+ICsKPiA+ID4gK3N0YXRpYyB2b2lkIHNldF9wc19maWVsZCh1
MzIgKmJ1Ziwgc3RydWN0IHJrdmRlY19wc19maWVsZCBmaWVsZCwgdTMyIHZhbHVlKQo+ID4gPiAr
ewo+ID4gPiArICAgICAgIHU4IGJpdCA9IGZpZWxkLm9mZnNldCAlIDMyLCB3b3JkID0gZmllbGQu
b2Zmc2V0IC8gMzI7Cj4gPiA+ICsgICAgICAgdTY0IG1hc2sgPSBHRU5NQVNLX1VMTChiaXQgKyBm
aWVsZC5sZW4gLSAxLCBiaXQpOwo+ID4gPiArICAgICAgIHU2NCB2YWwgPSAoKHU2NCl2YWx1ZSA8
PCBiaXQpICYgbWFzazsKPiA+ID4gKwo+ID4gPiArICAgICAgIGJ1Zlt3b3JkXSAmPSB+bWFzazsK
PiA+ID4gKyAgICAgICBidWZbd29yZF0gfD0gdmFsOwo+ID4gPiArICAgICAgIGlmIChiaXQgKyBm
aWVsZC5sZW4gPiAzMikgewo+ID4gPiArICAgICAgICAgICAgICAgYnVmW3dvcmQgKyAxXSAmPSB+
KG1hc2sgPj4gMzIpOwo+ID4gPiArICAgICAgICAgICAgICAgYnVmW3dvcmQgKyAxXSB8PSB2YWwg
Pj4gMzI7Cj4gPiA+ICsgICAgICAgfQo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgdm9p
ZCBhc3NlbWJsZV9od19wcHMoc3RydWN0IHJrdmRlY19jdHggKmN0eCwKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBya3ZkZWNfaDI2NF9ydW4gKnJ1bikKPiA+ID4gK3sK
PiA+ID4gKyAgICAgICBzdHJ1Y3Qgcmt2ZGVjX2gyNjRfY3R4ICpoMjY0X2N0eCA9IGN0eC0+cHJp
djsKPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfc3BzICpzcHMgPSBy
dW4tPnNwczsKPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRfcHBzICpw
cHMgPSBydW4tPnBwczsKPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2gyNjRf
ZGVjb2RlX3BhcmFtcyAqZGVjX3BhcmFtcyA9IHJ1bi0+ZGVjb2RlX3BhcmFtczsKPiA+ID4gKyAg
ICAgICBjb25zdCBzdHJ1Y3QgdjRsMl9oMjY0X2RwYl9lbnRyeSAqZHBiID0gZGVjX3BhcmFtcy0+
ZHBiOwo+ID4gPiArICAgICAgIHN0cnVjdCBya3ZkZWNfaDI2NF9wcml2X3RibCAqcHJpdl90Ymwg
PSBoMjY0X2N0eC0+cHJpdl90YmwuY3B1Owo+ID4gPiArICAgICAgIHN0cnVjdCBya3ZkZWNfc3Bz
X3Bwc19wYWNrZXQgKmh3X3BzOwo+ID4gPiArICAgICAgIGRtYV9hZGRyX3Qgc2NhbGluZ19saXN0
X2FkZHJlc3M7Cj4gPiA+ICsgICAgICAgdTMyIHNjYWxpbmdfZGlzdGFuY2U7Cj4gPiA+ICsgICAg
ICAgdTMyIGk7Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAvKgo+ID4gPiArICAgICAgICAqIEhXIHJl
YWQgdGhlIFNQUy9QUFMgaW5mb3JtYXRpb24gZnJvbSBQUFMgcGFja2V0IGluZGV4IGJ5IFBQUyBp
ZC4KPiA+ID4gKyAgICAgICAgKiBvZmZzZXQgZnJvbSB0aGUgYmFzZSBjYW4gYmUgY2FsY3VsYXRl
ZCBieSBQUFNfaWQgKiAzMiAoc2l6ZSBwZXIgUFBTCj4gPiA+ICsgICAgICAgICogcGFja2V0IHVu
aXQpLiBzbyB0aGUgZHJpdmVyIGNvcHkgU1BTL1BQUyBpbmZvcm1hdGlvbiB0byB0aGUgZXhhY3Qg
UFBTCj4gPiA+ICsgICAgICAgICogcGFja2V0IHVuaXQgZm9yIEhXIGFjY2Vzc2luZy4KPiA+ID4g
KyAgICAgICAgKi8KPiA+ID4gKyAgICAgICBod19wcyA9ICZwcml2X3RibC0+cGFyYW1fc2V0W3Bw
cy0+cGljX3BhcmFtZXRlcl9zZXRfaWRdOwo+ID4gPiArICAgICAgIG1lbXNldChod19wcywgMCwg
c2l6ZW9mKCpod19wcykpOwo+ID4gPiArCj4gPiA+ICsjZGVmaW5lIFdSSVRFX1BQUyh2YWx1ZSwg
ZmllbGQpIHNldF9wc19maWVsZChod19wcy0+aW5mbywgZmllbGQsIHZhbHVlKQo+ID4gPiArICAg
ICAgIC8qIHdyaXRlIHNwcyAqLwo+ID4gPiArICAgICAgIFdSSVRFX1BQUygweGYsIFNFUV9QQVJB
TUVURVJfU0VUX0lEKTsKPiA+ID4gKyAgICAgICBXUklURV9QUFMoMHhmZiwgUFJPRklMRV9JREMp
Owo+ID4gPiArICAgICAgIFdSSVRFX1BQUygxLCBDT05TVFJBSU5UX1NFVDNfRkxBRyk7Cj4gPiAK
PiA+IEF0IGZpcnN0IEkgZm91bmQgdGhhdCBwYXJ0IHJhdGhlciBpbnRlcmVzdGluZywgYnV0IEkg
c2VlIHRoaXMKPiA+IGhhcmRjb2RpbmcgbWF0Y2hlcyB3aGF0IFJvY2tjaGlwIGRvLgo+ID4gCj4g
PiBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgvbXBwL2Jsb2IvcmVsZWFzZS9tcHAv
aGFsL3JrZGVjL2gyNjRkL2hhbF9oMjY0ZF9ya3ZfcmVnLmMjTDI2Ngo+ID4gCj4gPiA+ICsgICAg
ICAgV1JJVEVfUFBTKHNwcy0+Y2hyb21hX2Zvcm1hdF9pZGMsIENIUk9NQV9GT1JNQVRfSURDKTsK
PiA+IAo+ID4gQnV0IGhlcmUncyBpdCdzIG5vdCBzbyBncmVhdC4gVGhpcyBkcml2ZXIgZG9lcyBu
b3QgaW1wbGVtZW50IGFueSBraW5kCj4gPiBvZiB2YWxpZGF0aW9uLiBJbiBmYWN0LCBpZiBJIHBh
c3MgMwo+ID4gaGVyZSAgKFlDYkNyIDQ6NDo0KSBpdCB3aWxsIGFjY2VwdCBpdCwgYW5kIGtpbmQg
b2YgZGVjb2RlIHNvbWUgZnJhbWVzLAo+ID4gYnV0IGV2ZW50dWFsbHkgd2l0aCBjcmFzaCBhbmQK
PiA+IHJlYm9vdCBpcyBuZWVkZWQuIFdlIHNob3VsZCAoYXMgZGVmaW5lZCBpbiB0aGUgU3RhdGVs
c3MgQ09ERUMgc3BlYykKPiA+IHZhbGlkYXRlIHRoZSBTUFMgYW5kIHJlZnVzZSBpZgo+ID4gYW4g
dW5zdXBwb3J0ZWQgcHJvZmlsZSBpZGMsIGNocm9tYSBpZGMsIGx1bWEvY2hyb21hIGRlcHRoIG9y
IGNvZGVkCj4gPiBzaXplIGlzIHJlcXVlc3RlZC4KPiAKPiBQZXJoYXBzIHdlIGNvdWxkIHZhbGlk
YXRlIHRoYXQgYXQgcmVxdWVzdF92YWxpZGF0ZSB0aW1lLAo+IG9yIG1heWJlIG9wcy50cnlfY3Ry
bCBpcyBiZXR0ZXIuCj4gCj4gPC90aGlua2luZ19vdXRfbG91ZD4KPiAKPiA+IFZhbGlkYXRpbmcg
dGhlCj4gPiBTX0ZNVCBpcyBub3Qgc3VmZmljaWVudCBhcyBvbmUgY2FuIHRyaWNrIHRoZSBkcml2
ZXIgaW4gYWxsb2NhdGluZwo+ID4gYnVmZmVycyB0aGF0IGFyZSB0b28gc21hbGwuCj4gPiAKPiAK
PiBJIGFtIG5vdCBzdXJlIEkgZm9sbG93IHlvdTogaG93IGRvIHlvdSB0aGluayB0aGUgZHJpdmVy
Cj4gY2FuIGJlIHRyaWNrZWQgbGlrZSB0aGlzPwoKV2hhdCBJIHNlZSBpcyB0aGF0IHRoZXJlIGlz
IG5vIGNyb3NzIHZhbGlkYXRpb24gYmV0d2VlbiB0aGUgU1BTCnJlZ2lzdGVyIGNvbmZpZ3VyYXRp
b24gYW5kIHRoZSBmcmFtZSBhbGxvY2F0aW9ucyBkb25lIHRocm91Z2ggU19GTVQuIFNvCmlmIEkg
Y2hlYXQgaW4gU19GTVQsIGFuZCB0aGVuIHBhc3MgYW4gU1BTIHRoYXQgaXMgbGFyZ2VyIHRoZW4K
YW5ub3VuY2VkLCB0aGUgSFcgY291bGQgcG90ZW50aWFsbHkgb3ZlcnJ1biBidWZmZXJzLiBUaGF0
IGVudGlyZWx5CmRlcGVuZHMgb24gaG93IG11Y2ggcm9idXN0bmVzcyB0aGVyZSBpcyBpbiB0aGUg
SFcgaW1wbGVtZW50YXRpb24gaXNlbGYKKGFuZCBpZiB3ZSBoYXZlIGEgcmVnaXN0ZXIgdG8gcGFz
cyB0aGUgYnVmZmVyIHNpemUpLgoKVGhpcyBpcyBvZiBjb3Vyc2UgYSBndXQgZmVlbGluZywgSSBo
YXZlbid0IGZvdW5kIHRpbWUgdG8gdGVzdCB0aGlzIHlldCwKYnV0IGl0IGNhbWUgdG8gbXkgbWlu
ZCBhZnRlciBJIG5vdGljZSB0aGF0IHBhc3NpbmcgYSA0OjQ6NCBjaG9tYV9pZGMKc3RyZWFtIGNh
dXNlcyBkcml2ZXIgZmFpbHVyZSAobm8gdmlzaWJsZSBtZW1vcnkgY29ycnVwdGlvbiBvciBvdmVy
cnVuCnRob3VnaCwgdGhlIGRyaXZlciBqdXN0IHN0b3BzIHdvcmtpbmcpLiBTbyB0aGUgcmVzdWx0
aW5nIGlzc3VlcyBtaWdodApub3QgYmUgdGhhdCBiYWQsIGJ1dCB5b3UgZW5kdXAgbG9vc2luZyB0
aGUgZGVjb2Rlci4KCj4gCj4gPiBXaGF0IEkgc3VzcGVjdCBpcyB0aGF0IHdlIG5lZWQgdG8gYmUg
Y2FyZWZ1bCB3aXRoIHRoaXMgSFcsIGFzIGl0IHNlZW1zCj4gPiB0byBiZSBhIGJpdCBoYWxmIGJh
Y2tlZCwgd2hpY2gKPiA+IG1lYW5zIGl0IG1pZ2h0IGJlIHN1cHBvcnRpbmcgbW9yZSBmZWF0dXJl
cyB0aGVuIHN1cHBvcnRlZCBieSB0aGUgVFJNCj4gPiBvciByZWZlcmVuY2UgY29kZSwgYW5kIHdl
Cj4gPiBtdXN0IGRpc2FibGUgdGhpcyB3aXRoIHNvZnR3YXJlLgo+ID4gCj4gPiAocC5zLiBJIGNh
biBwcm92aWRlIGEgc3RyZWFtIHRvIHJlcHJvZHVjZSB0aGUgNDo0OjQgZHJpdmVyIGZhaWx1cmUp
Cj4gPiAKPiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

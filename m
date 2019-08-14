Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C278D0E8
	for <lists+linux-rockchip@lfdr.de>; Wed, 14 Aug 2019 12:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/s7rT7zI5KoziI3Y+3UrCV8Ld++LGxEcp3tXkeSe6Q=; b=TaGHyfEZTEkNQT
	l039WuH/aYaLrbNqG+VFlTHpf5AJ7G4hnzN0Xr3EezdH2raoecyMmstrWaJqc3t86zTr9HRB7fdIU
	DQb2SvdSR9afJx1wmS8iK+Ud/lGKIvIkLQHTtgUHQ3beKN3mf0qRwywToY4j/Ug3fznsKThcnRA9P
	GbKZp3yiRIFAMX8G37eX9aSk2Mi7d5We2N1hDAtURpwgKkrU/J0YMyPKMjsoi9pJZgP/9l24RsuRu
	DIPg6r6UQJbuTidQMix1U9NNxvdB4xFsz27pornqIRfsmljcR/pl2fSCIyGbC55qTfpna+qJ7s5+4
	maW49ub20sblG+FWZE4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqkr-0000yZ-0j; Wed, 14 Aug 2019 10:43:45 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqkm-0000Z0-HA
 for linux-rockchip@lists.infradead.org; Wed, 14 Aug 2019 10:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1565779417; x=1568371417;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D656i7MGXEFGxWguKan6R5s/EVUDTlmA4b/j2KND9yU=;
 b=jFMR0aGnh/66h/QOqYc/DTGlydpVAO9XER+1YWvIaNMcXQfAEtvl+6R8NKssBNOz
 N3Uqa37fi6WF9Ra6Hp5O+tep1dGaKYJ36WJOi2mYTCXG7sow2X3LtwoHnEVDjvq7
 C7M3D1xTu7i9KX3/kQC+Ib1JhyBvEL8Rutmg4N+OmpQ=;
X-AuditID: c39127d2-e1bff70000001af2-4f-5d53e5d97cbe
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 45.FF.06898.9D5E35D5;
 Wed, 14 Aug 2019 12:43:37 +0200 (CEST)
Received: from [172.16.21.105] ([172.16.21.105])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019081412433723-67047 ;
 Wed, 14 Aug 2019 12:43:37 +0200 
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
To: Jagan Teki <jagan@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
 <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
 <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
From: Wadim Egorov <w.egorov@phytec.de>
Message-ID: <511a2886-707c-b7db-b3cf-7e3ed952f237@phytec.de>
Date: Wed, 14 Aug 2019 12:43:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMty3ZApcHpSmLtf4kTm+YqzpYMtGSU6N_Sm_xZNue2o73UvtQ@mail.gmail.com>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 14.08.2019 12:43:37,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 14.08.2019 12:43:37
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpgkeLIzCtJLcpLzFFi42JZI8DApXvzaXCswYEJ0hbvp09gsviyaQKb
 xbbpP9kslk/Yx2bx6cF/ZosvN1pZLb5t2cZo8XZvJ7sDh8faj/dZPWY3XGTxOHtnB6PH5iX1
 Hs/nbWX2+DtrP4vH2kcbWALYo7hsUlJzMstSi/TtErgy5r57xlJwnqei4UV0A+NCri5GTg4J
 AROJGz+vsXYxcnEICexglHj7dTsThHOaUWLbtRfMIFXCAvYSW1/eYgWxRQSCJTY8WwlWxCww
 h0ni/oS/bBAdXxglJv77CFbFJqAucWfDNzCbV8BG4v/rO2A2i4CqxL9pb9hAbFGBCInDO2Yx
 QtQISpyc+YQFxOYUCJR43rsabIOEwBVGic6lK1ggjhWSOL34LNhJzEAL/sy7BGWLS9x6Mp8J
 wtaWWLbwNfMERqFZSObOQtIyC0nLLCQtCxhZVjEK5WYmZ6cWZWbrFWRUlqQm66WkbmIExtLh
 ieqXdjD2zfE4xMjEwXiIUYKDWUmEd8LFoFgh3pTEyqrUovz4otKc1OJDjNIcLErivBt4S8KE
 BNITS1KzU1MLUotgskwcnFINjP29tgmyL79+vKgsktlqGcD5MMqRYffHisy522bp+ycIKlVt
 vLfkTFz7rRfuZsoLEw6ET1rxSz/lqoTFpCsHNp4oPXrZoWLNhUi2xrszis+GqCp/5b9eMSX0
 2zwXs4ONWzMezZkzvXhhnEkF84NZX8OV5VK+GHZvWh/Xue5fpXwr6+e/Ew0nJSmxFGckGmox
 FxUnAgAZE2rqkwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034340_878006_42BD9D91 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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

Ck9uIDE0LjA4LjE5IDExOjQwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE9uIE1vbiwgQXVnIDUsIDIw
MTkgYXQgNjowMCBQTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cm90
ZToKPj4KPj4gT24gMjAxOS83LzI5IOS4i+WNiDM6NDYsIEphZ2FuIFRla2kgd3JvdGU6Cj4+PiBQ
cmludCB0aGUgcmVhc29uIGZvciByZXNldCBpbnN0ZWFkIG9mIHN0b3JpbmcgaXQgaW50bwo+Pj4g
ZW52IHZhcmlhYmxlIGluIHJrMzI4OC4KPj4+Cj4+PiBUaGlzIHdvdWxkIGhlbHAgdG8gZmluZCB0
aGUgcmVzZXQgcmVhc29uIGRpcmVjdGx5Cj4+PiBvbiBVLUJvb3QgcHJvcGVyIGxvZ3MuCj4+Pgo+
Pj4gQ2M6IFdhZGltIEVnb3JvdiA8dy5lZ29yb3ZAcGh5dGVjLmRlPgo+Pj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4+PiAtLS0KPj4+ICAg
YXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYyB8IDIgKy0KPj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pgo+Pj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMgYi9hcmNoL2FybS9tYWNo
LXJvY2tjaGlwL3JrMzI4OC1ib2FyZC5jCj4+PiBpbmRleCBkM2VjMTQxZmVhLi42MTMyNjRkN2Vl
IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYwo+
Pj4gKysrIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgtYm9hcmQuYwo+Pj4gQEAgLTcy
LDcgKzcyLDcgQEAgc3RhdGljIHZvaWQgcmszMjg4X2RldGVjdF9yZXNldF9yZWFzb24odm9pZCkK
Pj4+ICAgICAgICAgICAgICAgcmVhc29uID0gInVua25vd24gcmVzZXQiOwo+Pj4gICAgICAgfQo+
Pj4KPj4+IC0gICAgIGVudl9zZXQoInJlc2V0X3JlYXNvbiIsIHJlYXNvbik7Cj4+PiArICAgICBw
cmludGYoIlJlc2V0IGNhdXNlOiAlc1xuIiwgcmVhc29uKTsKPj4KPj4gV2h5IHRoaXMgbmVlZCB0
byBzZXQgYXMgZW52IGJlZm9yZT8gSSBkaWRuJ3QgdG91Y2ggdGhpcyBjb2RlIHdoZW4gSSBtaWdy
YXRlCj4gRG9uJ3Qga25vdyB0aGUgcHJvcGVyIHJlYXNvbiBmb3IgdGhpcywgaWUgd2h5IEkgaGF2
ZSBDQ2VkIFdhZGltLgo+Cj4gV2FkaW0sIGFueSBjb21tZW50cz8KSWYgd2UgcHV0IHRoZSByZXNl
dF9yZWFzb24gaW5zaWRlIGFuIGVudmlyb25tZW50IHZhcmlhYmxlIHdlIGNhbiBsYXRlcgpyZXVz
ZSBpdCBmcm9tIGEgc2NyaXB0LCBlLmcuIGNoYW5naW5nIHRoZSBib290IGJlaGF2aW9yIGZvciBz
cGVjaWFsCmNhc2VzLiBSaWdodCBub3cgSSBoYXZlIG5vIHVzZWNhc2UgZm9yIGl0LiBTbyBmcm9t
IG15IHNpZGUgeW91IGNhbiBqdXN0CnByaW50IHRoZSByZWFzb24gaW5zdGVhZCBvZiBzZXR0aW5n
IHRoZSBlbnZpcm9ubWVudC4gQUZBSVIgSSBjb3BpZWQgdGhlCmVudi1tZXRob2QgZnJvbSBhbm90
aGVyIGJvYXJkLgpidHcsIGJvYXJkL3hpbGlueC96eW5xbXAvenlucW1wLmMgaXMgZG9pbmcgYm90
aC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

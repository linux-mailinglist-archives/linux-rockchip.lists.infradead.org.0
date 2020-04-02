Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4073919C16B
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IgaE2ltrQm+03oEeZEJZ5wKNZLyjisbB5gnmyWpMNzI=; b=Hh6ktHBYvjnx58KZ7scEEnVDC
	69VhuTzRzDcEX7jRVFR4bP3CdkB0RlpwC0NKZGS9mbEmEQa5b1TgG5MOQH95GSslxKr6RHQmqepMb
	YpU7uiEy/o+7gbIl/E76Vpk/OJxTOFAP8jCWfJxp4GgopCB7NgJe4DSpaNbIuoiJJOrF7hei0w4HN
	74sD96FeWjyeLJ4L5A5EMA9gsBqmhKCcGPzUg8lnvhrlMwiHnoIOhX7i4+vbUo0jFevmUXiF6yhdU
	Y5rS52pi4GdnvWa5CRd3V7gIC96rd46YPFGm94XzyM/vEgcrS2L/bRRxJ3g4eCrZusQjjC415tEMu
	pziWFd3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzHR-0001gI-Cr; Thu, 02 Apr 2020 12:49:09 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzHN-0001fi-LX
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:49:07 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id 8637E1058;
 Thu,  2 Apr 2020 20:49:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P21715T140275355735808S1585831738705298_; 
 Thu, 02 Apr 2020 20:49:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e9905572d62c18a9812f59396c348a34>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 5/5] video: rockchip: Support 4K resolution for rk3399, 
 HDMI
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <d53471a2-80ee-7154-337d-da9b04d89732@rock-chips.com>
Date: Thu, 2 Apr 2020 20:48:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402114125.2501-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054905_870837_29340DD1 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yIOS4i+WNiDc6NDEsIEphZ2FuIFRla2kgd3JvdGU6Cj4gVGhlIGRlZmF1bHQg
cmVzb2x1dGlvbiBmb3Igcm9ja2NoaXAgZGlzcGxheSBpcyAxOTIweDEwODAKPiB3aGljaCBmYWls
ZWQgdG8gd29yayBvbiA0SyBIRE1JIG91dCBkaXNwbGF5cyBvbiByazMzOTkuCj4KPiBTbywgbWFy
ayB0aGUgZGVmYXVsdCByZXNvbHV0aW9uIGFzIDM0ODB4MjE2MCBmb3IgcmszMzk5Cj4gSERNSSBv
dXQuCj4KPiBUaGlzIHdvdWxkIHdvcmsgYWxsIHRoZSBoZG1pIGRpc3BsYXkgcmVzb2x1dGlvbnMg
dGlsbAo+IDRLLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNv
bHV0aW9ucy5jb20+CgoKClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2st
Y2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBmb3IgdjM6Cj4gLSBu
ZXcgcGF0Y2gKPgo+ICAgZHJpdmVycy92aWRlby9yb2NrY2hpcC9LY29uZmlnIHwgMiArKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
dmlkZW8vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAvS2NvbmZpZwo+
IGluZGV4IDEwMTgyZDBiNjYuLmNmZDc3NGVhZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy92aWRl
by9yb2NrY2hpcC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy92aWRlby9yb2NrY2hpcC9LY29uZmln
Cj4gQEAgLTIyLDYgKzIyLDcgQEAgbWVudWNvbmZpZyBWSURFT19ST0NLQ0hJUAo+ICAgY29uZmln
IFZJREVPX1JPQ0tDSElQX01BWF9YUkVTCj4gICAgICAgICAgIGludCAiTWF4aW11bSBob3Jpem9u
dGFsIHJlc29sdXRpb24gKGZvciBtZW1vcnkgYWxsb2NhdGlvbiBwdXJwb3NlcykiCj4gICAJZGVw
ZW5kcyBvbiBWSURFT19ST0NLQ0hJUAo+ICsJZGVmYXVsdCAzNDgwIGlmIFJPQ0tDSElQX1JLMzM5
OSAmJiBESVNQTEFZX1JPQ0tDSElQX0hETUkKPiAgIAlkZWZhdWx0IDE5MjAKPiAgIAloZWxwCj4g
ICAJICBUaGUgbWF4aW11bSBob3Jpem9udGFsIHJlc29sdXRpb24gdG8gc3VwcG9ydCBmb3IgdGhl
IGZyYW1lYnVmZmVyLgo+IEBAIC0zMSw2ICszMiw3IEBAIGNvbmZpZyBWSURFT19ST0NLQ0hJUF9N
QVhfWFJFUwo+ICAgY29uZmlnIFZJREVPX1JPQ0tDSElQX01BWF9ZUkVTCj4gICAgICAgICAgIGlu
dCAiTWF4aW11bSB2ZXJ0aWNhbCByZXNvbHV0aW9uIChmb3IgbWVtb3J5IGFsbG9jYXRpb24gcHVy
cG9zZXMpIgo+ICAgCWRlcGVuZHMgb24gVklERU9fUk9DS0NISVAKPiArCWRlZmF1bHQgMjE2MCBp
ZiBST0NLQ0hJUF9SSzMzOTkgJiYgRElTUExBWV9ST0NLQ0hJUF9IRE1JCj4gICAJZGVmYXVsdCAx
MDgwCj4gICAJaGVscAo+ICAgCSAgVGhlIG1heGltdW0gdmVydGljYWwgcmVzb2x1dGlvbiB0byBz
dXBwb3J0IGZvciB0aGUgZnJhbWVidWZmZXIuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

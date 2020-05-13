Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CFD1D03E6
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 May 2020 02:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nsYZ6zKFkb9lSxTGdRxgxfdcEX0jdzUoyxMxiJWqsuc=; b=itlAf0dNoEd8QYfQuENRtx+2A
	axhV5KMnxwPpCK5c8RP5yBLnOJH7njKfbdyr5hvLCRI7jjKfcbBR+/tNJqmHOUT8hX9pxP0y1NHCk
	elBGYjzxHHelnVTB4QB8WKg+SrFW3HvWm8mH7PKSdJqpXRtYH3HA5+P2toXEFxf3hrQVumLoQE7ta
	BiekRS7icfMygaJv47STOjZ3XpkeuWb+qOlM625P8NPtlj9DOOm+LwrP5cbRhL1kRsO3m0HLjb7f1
	+118diSL0ywpTKGIfKfmfsR6ZDnCzLdaXe4uM1dhucCKZvgiDK2QCKkGOv386YiJMmAlcKUcpDX1W
	7DU9Cricw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYfYr-00041j-Bn; Wed, 13 May 2020 00:47:49 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYfYm-0003qW-Sy
 for linux-rockchip@lists.infradead.org; Wed, 13 May 2020 00:47:46 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 4EB2E35B;
 Wed, 13 May 2020 08:47:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.33] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P33517T140425700570880S1589330852399684_; 
 Wed, 13 May 2020 08:47:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7b837838c52197469d661e66f218d576>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Marek Vasut <marex@denx.de>, heiko@sntech.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
 <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
 <618d46f5-7970-9b27-e912-36f21b24a957@rock-chips.com>
 <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
From: Frank Wang <frank.wang@rock-chips.com>
Message-ID: <9d80fda2-9760-0aec-6bb7-5680279b3a0f@rock-chips.com>
Date: Wed, 13 May 2020 08:47:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <6f0482e0-eedc-b7e4-f6ab-cf82b26c22ec@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_174745_135073_4AEBC563 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.202 listed in wl.mailspike.net]
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgpPbiAyMDIwLzUvMTIgMTU6MjYsIE1hcmVrIFZhc3V0IHdyb3RlOgo+IE9uIDUv
MTIvMjAgMzowOCBBTSwgRnJhbmsgV2FuZyB3cm90ZToKPj4gSGkgTWFyZWssCj4+Cj4+IE9uIDIw
MjAvNS8xMSAxNzo0OCwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+PiBPbiA1LzExLzIwIDk6NTcgQU0s
IEZyYW5rIFdhbmcgd3JvdGU6Cj4+PiBbLi4uXQo+Pj4KPj4+PiBAQCAtMzk0LDYgKzQwNywxMiBA
QCBzdGF0aWMgaW50IGR3YzNfZ2x1ZV9wcm9iZShzdHJ1Y3QgdWRldmljZSAqZGV2KQo+Pj4+ICDC
oMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
Pj4+ICDCoCArwqDCoMKgIGlmIChnbHVlLT5yZXNldHMuY291bnQgPCAxKSB7Cj4+PiBUaGlzIGNv
bmRpdGlvbiBpcyBvbmx5IHRydWUgaWYgY291bnQgPT0gMCA/Cj4+PiBXaGF0J3MgdGhlIHB1cnBv
c2Ugb2YgdGhpcyB0ZXN0ID8KPj4gRm9yIHByZXZpb3VzIGR0cyBvZiB0aGUgTGludXgga2VybmVs
LCB0aGUgcmVzZXQgcGhhbmRsZXMgd2VyZSBpbgo+PiBkd2MzLWdsdWUgbm9kZXMsIGhvd2V2ZXIs
IHRoZXkgYXJlIG1vdmVkIHJlY2VudGx5IGludG8gZHdjMyB0aGF0IGlzIGEKPj4gY2hpbGQgbm9k
ZSBvZiBkd2MzLWdsdWUuCj4+Cj4+IFNvIHRoZSBhYm92ZSBjb2RlcyBpcyB0byBtYWtlIGNvbXBh
dGlibGUuCj4gV2h5IGRvZXNuJ3QgaXQgY2hlY2sgZm9yIGNvdW50ID09IDAgdGhlbiA/Cj4KV2ls
bCBmaXguCgoKQlIsCkZyYW5rCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

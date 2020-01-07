Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87601321B3
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 Jan 2020 09:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZpS07c+iAt5i3OI6ree+GvOcW7JLx5AVwTq+fCqNqtY=; b=Ixfx/+ECXQx2k4AeaySOd7hQo
	mcPu8cZ6bvxT/8VHr8OYuXYX5L5ieFJ1022gihRQ8Sh+PDaz5o1j8Z6H+JVmu3dCI5ZcDbOaOfibF
	G8T4M4dLpWp0PutviMjbfTtw3lOF7lvEq9UPSelW3V3zywaIMwa6VfHqYVae9Qn2KyUqTqPD2Bq4e
	m7riF9mlrBkiUVQoi3Fb1KY0jnpYDS8efzAJpRxslSZTSfR7pUJxMX5/ZhsopL08Mk0AJj6oYnlrc
	KWIbp0QxtyNNKiRRnHyBRa0vCBm83Z2PPOi9APMfAJZBSY5EudqfxerNoRhP13zyUG5JIBQq8t+Yj
	W9B+m1mFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iokcL-0002XL-0g; Tue, 07 Jan 2020 08:53:37 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iokcH-0002X0-AC
 for linux-rockchip@lists.infradead.org; Tue, 07 Jan 2020 08:53:34 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 25600CC8;
 Tue,  7 Jan 2020 16:53:31 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P30763T140693051795200S1578387209492122_; 
 Tue, 07 Jan 2020 16:53:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <897b2218a28f2d4eed41dc03339fc530>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
To: Jagan Teki <jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
 <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
 <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0f93be06-6ff1-a5fb-42f2-b9aaa81c3444@rock-chips.com>
Date: Tue, 7 Jan 2020 16:53:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_005333_519974_96477DA8 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiAyMDE5LzEyLzMwIOS4i+WNiDM6NTIsIEphZ2FuIFRla2kgd3JvdGU6Cj4g
T24gTW9uLCBEZWMgMzAsIDIwMTkgYXQgODozNSBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gT24gMjAxOS8xMi8yMSDkuIvljYgzOjU0LCBKYWdh
biBUZWtpIHdyb3RlOgo+Pj4gQWRkIFNQSSBib290IHN1cHBvcnQgZm9yIFJPQy1SSzMzOTktUEMg
Ym9hcmQuCj4+Pgo+Pj4gVGhpcyB3b3VsZCBhZGQgc2VwYXJhdGUgY29uZmlnIGZpbGUKPj4gV2hh
dCBpcyB0aGUga2V5IHJlYXNvbiB0byBoYXZlIGEgbmV3IHNlcGFyYXRlIGNvbmZpZyBmaWxlPyBJ
IHRoaW5rIGl0Cj4+IHdvdWxkIGJlIG11Y2ggYmV0dGVyCj4+Cj4+IHRvIHVzZSB0aGUgc2FtZSBk
ZWZjb25maWcsIHNwaSBib290IGlzIG9uZSBvZiBmZWF0dXJlcyBsaWtlIG90aGVyCj4+IGZlYXR1
cmVzLCBpdCBzaG91bGQgbm90IG5lZWQKPj4KPj4gYSBzZXBhcmF0ZSBjb25maWcuCj4gUHJvYmxl
bSBpcyBlbnYsIHdlIGRvbid0IGhhdmUgZHluYW1pYyBlbnYgcGlja3VwIEkgZ3Vlc3MsIGRvbid0
IHdlPwoKSSB3b3VsZCBzdWdnZXN0IHRvIHNwbGl0IHRoZSBhZGRpdGlvbiBvZiB0aGUgc3BpX2Rl
ZmNvbmZpZyBvdXQgb2YgdGhpcyAKcGF0Y2ggc28gdGhhdCBJIGNhbiBtZXJnZQoKdGhlIG90aGVy
IHBhcnQgb2YgY29kZSB1cGRhdGUgYW5kIGdldCB0aGUgaW1hZ2UgZm9yIHNwaSB3aXRob3V0IGJp
bm1hbiAKZm9yIG5vdyBiZWZvcmUgd2UKCmhhdmUgYSBiZXR0ZXIgc29sdXRpb24uCgpBbmQgSSBk
b24ndCB3YW50IHRvIGRvdWJsZSB0aGUgZGVmY29uZmlnIGZpbGUgbnVtYmVyIGZvciBzcGkgY29u
ZmlnIAppbWFnZSB3aXRoIGJpbm1hbiBzdXBwb3J0LgoKClRoYW5rcywKCi0gS2V2ZXIKCj4KPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

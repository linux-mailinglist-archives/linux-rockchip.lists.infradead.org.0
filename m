Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605FFF8C68
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 11:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p1T6fxQygInN5gJBSdtp1Pdc4Ye6DYmX48mtrBrOb9Q=; b=FB6iOBkTRUcEEyyoVgPW0nCDm
	NbWlL0+Ko2ZM4kaJWIwbSJ7XBVL2xwx1X8VOjoMz4D0rQWCNtXm+Y12swjSWYZL5kKSb2OVKUObkT
	8ULPOPzIs1SwsMbMJG+DLs7mRSW71FetMZbXe7W+4Lk9VZyT8UUmivAwgK5viHYN6wEBwAzgMHyE2
	YIs3RgfzpIXYz2dQRfoA2JRlcJY2twPkeb3kHhvoA56GaE3BwHoUxkIMPKyck1Fh55kQUPBIeCpfQ
	02/V9lIg8tTuzT7fztI1XQfHI5BizumkYssdWT/J/dq5PiS3DsKfOC2cliTo+VTcEljiuSUlgaWeH
	13ojd4r+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUT0z-0008J5-8i; Tue, 12 Nov 2019 10:03:13 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUT0l-00088R-O3; Tue, 12 Nov 2019 10:03:01 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 070C5BCF;
 Tue, 12 Nov 2019 18:02:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P3849T140143446607616S1573552957842936_; 
 Tue, 12 Nov 2019 18:02:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3042783e90e705440e20c31947d337db>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: akash@openedev.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Markus Reichl <m.reichl@fivetechno.de>, Soeren Moch <smoch@web.de>,
 heiko@sntech.de
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <17e14b30-02ee-2379-8891-088677924479@rock-chips.com>
Date: Tue, 12 Nov 2019 18:02:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <acbab893-9e9a-cfe1-67bf-a9e2b2e50114@fivetechno.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_020259_937368_5FC38F6C 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>,
 devicetree@vger.kernel.org, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Robin Murphy <robin.murphy@arm.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Oskari Lemmela <oskari@lemmela.net>, Akash Gajjar <akash@openedev.com>,
 Nick Xie <nick@khadas.com>, Peter Robinson <pbrobinson@gmail.com>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TWFya3VzLAoKCk9uIDIwMTkvMTEvMTIg5LiL5Y2INDoxNiwgTWFya3VzIFJlaWNobCB3cm90ZToK
PiBIaSBLZXZlciwKPgo+IGhhdmUgYSByazMzOTktcm9jLXBjIHJ1bm5pbmcgbWFpbmxpbmUgVS1C
b290IGFuZCBrZXJuZWwgYW5kIHZkZF9sb2cgaXMKPiBzaG93aW5nIDExMTggbVYuCgpUaGUgcmsz
Mzk5LXJvYy1wYyBoYXZlIHRoZSBzYW1lIHZkZF9sb2cgY2lyY3VpdCBpbiBzY2hlbWF0aWMsIHNv
IGl0IApzaG91bGQgbGlrZSB0aGUgcGF0Y2ggMS8zIG9mCgp0aGlzIHBhdGNoIHNldC4KCkkgZG9u
J3QgdW5kZXJzdGFuZCB3aG8gaXMgc2V0dGluZyB0aGlzIHZhbHVlLCBtYXliZSB0aGUgZGVmYXVs
dCB2YWx1ZSAKd2l0aG91dCBwd20gcmVndWxhdG9yIGVuYWJsZWQ/Cgo+IElzIHRoaXMgYSBkYW5n
ZXIgZm9yIHRoZSBib2FyZD8KPiBIb3cgdG8gZml4IGl0PwoKVGhlIGJlc3Qgd2F5IGlzIHRvIHNl
dCBjb3JyZWN0IG1pbi9tYXggbWljcm92b2x0IG9mIHRoZSAKcmVndWxhdG9yKG1lYXN1cmUgd2l0
aCBQV00gb3V0cHV0IGxvdyBhbmQgaGlnaCksCgoobm90ZSB0aGF0IGlmwqAgbm8gZHJpdmVyIHRv
dWNoIHRoZSByZWd1bGF0b3IsIHRoZSBQV00gaXMgZGVmYXVsdCBpbnB1dCwgCm5vdCBvdXRwdXQ7
KQoKYW5kIHNldCBhIGluaXQtbWljcm92b2x0IGZvciBVLUJvb3QgZHJpdmVyLCBhbmQgSSB0aGlu
ayBubyBrZXJuZWwgZHJpdmVyIAp0b3VjaCB0aGlzIHJlZ3VsYXRvciBub3cuCgoKVGhhbmtzLAoK
LSBLZXZlcgoKPiBCdHcuIHZpbi1zdXBwbHkgZm9yIHRoaXMgcHdtLXJlZ3VsYXRvciBpcyBpZ25v
cmVkIGFuZCBJIGNvdWxkIG5vdCBmaW5kIGl0Cj4gaW4gYmluZGluZ3MgZG9jLgo+Cj4gR3J1w58s
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

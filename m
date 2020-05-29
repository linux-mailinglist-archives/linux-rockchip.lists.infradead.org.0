Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB331E7A31
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 12:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lM0o2ect9IcCVRRNA0DPCxBmg78/INNXLqnCLzOBD00=; b=rLer2Reo4IGGLtNA8StfsJetV
	TC866OtayGRfW4V0v3n+l0sptVa/hsuFtsvC8lch/jcgnM2H1b1smnmAETxz4zYmOiQywruNuTcPT
	vMKw+kTK0STNvia7Rn6DL4ukTAJ+tm2AEsXZWEduBQb+tv29klR6pLbKn9ps6xJWXacpfunwlrCQ5
	8Ik2DS8hnxj7OfzY1hm/lFX0kTZ6xRQXc+iCYSBTBiOiyjBbJNe9RiO2kiKyuQo4r6MjeZP+LXBCJ
	rxeNV7IZTS7/puf6bvujyLJ/vWu1URbnml7rlI2TPSQOjfwNt70ICDbu1D9HdJ2fi3OB4/EECC+Mp
	Bugn+JZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jec10-00061Z-TM; Fri, 29 May 2020 10:13:26 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jec0r-0005zc-P4
 for linux-rockchip@lists.infradead.org; Fri, 29 May 2020 10:13:24 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id D62514EE;
 Fri, 29 May 2020 18:13:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P25393T140143140783872S1590747176877127_; 
 Fri, 29 May 2020 18:13:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c6c0461e05a8a6225243e793eba923b3>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v6 04/16] arm: mach-rockchip: bind sub-nodes for
 rk3399_syscon
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200526033220.20047-1-frank.wang@rock-chips.com>
 <20200526033220.20047-5-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <575e469a-9b90-6e12-f7b9-95d53aa2487d@rock-chips.com>
Date: Fri, 29 May 2020 18:12:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200526033220.20047-5-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_031318_007678_34F96143 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [211.150.70.198 listed in wl.mailspike.net]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Ck9uIDIwMjAvNS8yNiDkuIrljYgxMTozMiwgRnJhbmsgV2FuZyB3cm90ZToKPiBUaGVyZSBhcmUg
c29tZSBzdWItbm9kZXMgdW5kZXIgdGhlIGdyZiBEVCwgc28gYWRkIGJpbmQgY2FsbGJhY2sKPiBm
dW5jdGlvbiBpbiByazMzOTkgc3lzY29uIGRyaXZlciB0byBzY2FuIHRoZW0gcmVjdXJzaXZlbHku
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hpcHMuY29t
PgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpU
aGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMzk5L3N5
c2Nvbl9yazMzOTkuYyB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
Cj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvc3lzY29uX3Jr
MzM5OS5jIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMzOTkvc3lzY29uX3JrMzM5OS5jCj4g
aW5kZXggMjU5Y2E0NGQ2OC4uZjI3YjBjZWQ4MiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9tYWNo
LXJvY2tjaGlwL3JrMzM5OS9zeXNjb25fcmszMzk5LmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXJv
Y2tjaGlwL3JrMzM5OS9zeXNjb25fcmszMzk5LmMKPiBAQCAtMjAsNiArMjAsOSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHVkZXZpY2VfaWQgcmszMzk5X3N5c2Nvbl9pZHNbXSA9IHsKPiAgIFVfQk9P
VF9EUklWRVIoc3lzY29uX3JrMzM5OSkgPSB7Cj4gICAJLm5hbWUgPSAicmszMzk5X3N5c2NvbiIs
Cj4gICAJLmlkID0gVUNMQVNTX1NZU0NPTiwKPiArI2lmICFDT05GSUdfSVNfRU5BQkxFRChPRl9Q
TEFUREFUQSkKPiArCS5iaW5kID0gZG1fc2Nhbl9mZHRfZGV2LAo+ICsjZW5kaWYKPiAgIAkub2Zf
bWF0Y2ggPSByazMzOTlfc3lzY29uX2lkcywKPiAgIH07Cj4gICAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

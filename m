Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFE818EDAA
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 02:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=46Cl6Y/SFLPWEMvt0g9XJwgLQul6cVkBnrPWmXw9Q+g=; b=J0/9Rdlve4cO2L
	JO1FY8E3CQd1PNA4CgbO9OJgda7IZWmYfIBcopGr3XMpxxEndgHNzcwF9lNPXvQwUIl6vlmg3MdND
	o1FiAqDsVMoqprHNY5F9KqoGIdDNgIPOe9r0wlUOrpB561uex1cNOs5DXKjw88DlZmByDX8HUrsJg
	Anr0ZzHqgjK6kzey3IHVlmE+tCPTq2w29JhBV3BR5439iHWd2EzM2c4zlIU8u6SVWIcCFno8/6Mf5
	lb6dGjEop66vPCjL/ozJEQtOp8dnvj1yo2PNnENkB8+XGYygsIqs6SLVyun469IZA8tZ61nUEUfmT
	lvfDbTlRPWJQb5FkoBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGByc-0000z1-7q; Mon, 23 Mar 2020 01:34:02 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGByO-0000rq-Ul; Mon, 23 Mar 2020 01:33:54 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id 2787D415;
 Mon, 23 Mar 2020 09:33:35 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from hp1216 (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11671T139978406659840S1584927214117798_; 
 Mon, 23 Mar 2020 09:33:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1b0edf511b5824d2ec8bf57941cdf57b>
X-RL-SENDER: zyf@rock-chips.com
X-SENDER: zyf@rock-chips.com
X-LOGIN-NAME: zyf@rock-chips.com
X-FST-TO: miquel.raynal@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Date: Mon, 23 Mar 2020 09:33:35 +0800
Organization: =?UTF-8?B?55Ge6Iqv5b6u55S15a2Q?=
From: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: Re: [PATCH v4 0/3] Add Rockchip NFC drivers for RK3308 and others
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>, 
 <20200320111841.3386d415@xps13>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.15.80[cn]
Mime-Version: 1.0
Message-ID: <2020032309312035921797@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_183349_219010_156AA3A1 
X-CRM114-Status: UNSURE (   5.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree <devicetree@vger.kernel.org>, vigneshr <vigneshr@ti.com>,
 richard <richard@nod.at>, linux-rockchip <linux-rockchip@lists.infradead.org>,
 robh+dt <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKRG8geW91IG1lYW4geW91IGhhdmUgcmVjZWl2ZWQgVjQgc2VyaWVzIHRocmVl
IHRpbWVz77yfIAoKSSBvbmx5IHNlbmQgdjQgZm9yIHRoaXMgc2VyaWVzIG9uZSB0aW1lLgrCoApU
aGFua3MsCllpZmVuZwoKPkhpIFlpZmVuZywKPgo+WWlmZW5nIFpoYW8gPHlpZmVuZy56aGFvQHJv
Y2stY2hpcHMuY29tPiB3cm90ZSBvbiBGcmksIDIwIE1hciAyMDIwCj4xNzozMzozOSArMDgwMDoK
Pgo+PiBSb2NrY2hwJ3MgTkZDKE5hbmQgRmxhc2ggQ29udHJvbGxlcikgaGFzIHRocmVlIHZlcnNp
b25zOiBWNiwgVjggYW5kIFY5Lgo+PiBUaGlzIHNlcmllcyBwYXRjaCBjYW4gc3VwcG9ydCBhbGzC
oCB0aHJlZSB2ZXJzaW9ucy4KPj4KPj4KPkl0IGxvb2tzIGxpa2UgaXQncyB0aGUgdGhpcmQgdGlt
ZSB5b3Ugc2VuZCBhIHY0IGZvciB0aGlzIHNlcmllcywgaWYgeW91Cj5jaGFuZ2UgdGhpbmdzIGlu
IHRoZSBzZXJpZXMsIHBsZWFzZSBpbmNyZWFzZSB0aGUgdmVyc2lvbiBudW1iZXIuIElmCj5pdCBp
cyBhIG1pc3Rha2UsIHBsZWFzZSB0ZWxsIHVzIHNvLCBiZWNhdXNlIGl0IGlzIG5vdCBlYXN5IHRv
IGZvbGxvdyA6KQo+Cj4KPlRoYW5rcywKPk1pcXXDqGwKPgo+Cj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

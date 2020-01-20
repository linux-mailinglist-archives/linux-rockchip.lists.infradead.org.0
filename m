Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22418142126
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 01:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hs3ubRHBzmDZF8TbX0LLbajWNbkZAgMB0JIZIGSqLDE=; b=TNfY3d9XeojYEVkAAidEBCD9O
	58xvvOB6bex7TkFU7AU3oJn5bwAHfZJ+yQBXpIhKkM235Fx1TjCEp4jsyDYKRB07sKIoafkSiNTD2
	vEPQRb1FpOFUrHh4nTk9LiulzXJ3OjxtyJ/Pxl/fwVmtE0XMp8sJJDLNCw0HXIB/SrjWTOVxHYAIz
	sd/cPR2rQGHdNuWODa8fh7kXRfvBjwVkrA84J0dtY8zpvhbWuCjBsc6JiGPgszeq1Rwu0cpC3J94v
	mhXf//3Us3kjyzXwgxln/Zt/U38FPSVhHp2Y9NpPn0hu9z5yl4KPFbGLVf70NfQIYTZapfIjRSAa6
	92Gy2GrXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itLM0-0000DO-F6; Mon, 20 Jan 2020 00:55:44 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itLLu-0000CN-Td
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 00:55:41 +0000
Received: from localhost (unknown [192.168.167.8])
 by lucky1.263xmail.com (Postfix) with ESMTP id CBF458C0D5;
 Mon, 20 Jan 2020 08:55:26 +0800 (CST)
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.37] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26539T139797855188736S1579481725716441_; 
 Mon, 20 Jan 2020 08:55:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <72906c28600ff790cba1475d38f3f6b2>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: wulf@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
To: Francesco Lavra <francescolavra.fl@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
 <0975b4e4-4bee-3f8e-5276-2bc78e6dabc0@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <9458895c-9e1a-ad97-ba5d-e1c4e56dad2b@rock-chips.com>
Date: Mon, 20 Jan 2020 08:55:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0975b4e4-4bee-3f8e-5276-2bc78e6dabc0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_165539_124923_C09C71D4 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.133 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>,
 William Wu <william.wu@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8xOSAwOjM2LCBGcmFuY2VzY28gTGF2cmEgd3JvdGU6Cj4gT24gMS8xNC8yMCA4
OjI1IEFNLCBTaGF3biBMaW4gd3JvdGU6Cj4+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVz
ZXRfY29udHJvbF9yZWxlYXNlKHN0cnVjdCByb2NrY2hpcF9wY2llIAo+PiAqcm9ja2NoaXApCj4+
ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAtPnBjaS0+ZGV2Owo+
PiArwqDCoMKgIHN0cnVjdCBwcm9wZXJ0eSAqcHJvcDsKPj4gK8KgwqDCoCBjb25zdCBjaGFyICpu
YW1lOwo+PiArwqDCoMKgIGludCByZXQsIGNvdW50LCBpID0gMDsKPj4gKwo+PiArwqDCoMKgIGNv
dW50ID0gb2ZfcHJvcGVydHlfY291bnRfc3RyaW5ncyhkZXYtPm9mX25vZGUsICJyZXNldC1uYW1l
cyIpOwo+PiArwqDCoMKgIGlmIChjb3VudCA8IDEpCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVOT0RFVjsKPj4gKwo+PiArwqDCoMKgIHJvY2tjaGlwLT5yc3RzID0gZGV2bV9rY2FsbG9jKGRl
diwgY291bnQsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNp
emVvZihzdHJ1Y3QgcmVzZXRfYnVsa19kYXRhKSwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgR0ZQX0tFUk5FTCk7Cj4+ICvCoMKgwqAgaWYgKCFyb2NrY2hpcC0+
cnN0cykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOwo+PiArCj4+ICvCoMKgwqAg
b2ZfcHJvcGVydHlfZm9yX2VhY2hfc3RyaW5nKGRldi0+b2Zfbm9kZSwgInJlc2V0LW5hbWVzIiwK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByb3AsIG5hbWUpIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHJvY2tjaGlwLT5yc3RzW2ldLmlkID0gbmFtZTsKPj4gK8KgwqDC
oMKgwqDCoMKgIGlmICghcm9ja2NoaXAtPnJzdHNbaV0uaWQpCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybiAtRU5PTUVNOwo+PiArwqDCoMKgwqDCoMKgwqAgaSsrOwo+PiArwqDCoMKg
IH0KPj4gKwo+PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBjb3VudDsgaSsrKSB7Cj4+ICvCoMKg
wqDCoMKgwqDCoCByb2NrY2hpcC0+cnN0c1tpXS5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0
X2V4Y2x1c2l2ZShkZXYsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJvY2tjaGlwLT5yc3RzW2ldLmlkKTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChJ
U19FUlJfT1JfTlVMTChyb2NrY2hpcC0+cnN0c1tpXS5yc3QpKSB7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCAlc1xuIiwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByb2NrY2hpcC0+Y2xrc1tpXS5pZCk7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtUFRSX0VSUihyb2NrY2hpcC0+cnN0c1tpXS5yc3QpOwo+
IAo+IElTX0VSUl9PUl9OVUxMKCkgc2hvdWxkIGJlIHJlcGxhY2VkIHdpdGggSVNfRVJSKCksIGJl
Y2F1c2UgCj4gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoKSBuZXZlciByZXR1cm5z
IGEgTlVMTCB2YWx1ZS4KPiBBbHNvLCBpbiBjYXNlIG9mIGVycm9yIHlvdSBzaG91bGQgcmV0dXJu
IHRoZSB2YWx1ZSBmcm9tIFBUUl9FUlIoKSwgCj4gd2l0aG91dCB0aGUgbWludXMgc2lnbi4KClRo
YW5rcywgRnJhbmNlc2NvLiBXaWxsIGZpeCBpbiB2Mi4KCj4gCj4gCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

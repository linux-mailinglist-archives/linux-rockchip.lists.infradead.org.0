Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA4A18F2EF
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 11:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XObN4H7Df+lY5mjrG3GI6LP48VpYZcLnPHA6A0sbS30=; b=exKrRCMz/r7ZVe
	Y4UIpAgPEB9XJHPh7JKNLfPxA2A69mNyu8zQxdSFJEBNq1hhiOScFVxoobX+nLmXk/WINLzg0539v
	KjRviYZAeLJds13QUE3XxXmurQoG4uUOM4ZtULzQxI/+XQlhyMlN72HiL0Oom2KtKxD/9fzs6upm9
	t72dlN1bI6+RxznONr3jyE97CFqurpNa4UsJaP0N2BnGcd7DoFd9TVUxGya3jbLLngV7H1/KL9zYZ
	TsqTIPyGQOtAwq8kuxoO1/8eFzi8tOda8IMP4pcbqqe5bNTdalEe370bPl9ogdfODL+79S2jIRO1S
	5fL9FBD6ay4KXUPAOrVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKSg-0002sU-Ky; Mon, 23 Mar 2020 10:37:38 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKSW-0002jC-Ce; Mon, 23 Mar 2020 10:37:29 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0A5B9FF810;
 Mon, 23 Mar 2020 10:37:16 +0000 (UTC)
Date: Mon, 23 Mar 2020 11:37:14 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v4 0/3] Add Rockchip NFC drivers for RK3308 and others
Message-ID: <20200323113714.375e656e@xps13>
In-Reply-To: <2020032309312035921797@rock-chips.com>
References: <20200320093342.15470-1-yifeng.zhao@rock-chips.com>
 <20200320111841.3386d415@xps13>
 <2020032309312035921797@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_033728_561986_A70ECADE 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>, vigneshr <vigneshr@ti.com>,
 richard <richard@nod.at>, linux-rockchip <linux-rockchip@lists.infradead.org>,
 robh+dt <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoK6LW15Luq5bOwIDx5aWZlbmcuemhhb0Byb2NrLWNoaXBzLmNvbT4gd3JvdGUg
b24gTW9uLCAyMyBNYXIgMjAyMCAwOTozMzozNQorMDgwMDoKCj4gSGkgTWlxdWVsLAo+IAo+IERv
IHlvdSBtZWFuIHlvdSBoYXZlIHJlY2VpdmVkIFY0IHNlcmllcyB0aHJlZSB0aW1lc++8nyAKPiAK
PiBJIG9ubHkgc2VuZCB2NCBmb3IgdGhpcyBzZXJpZXMgb25lIHRpbWUuCgpZZXMsIEkgZGlkIHJl
Y2VpdmUgdGhlIHY0IHRocmVlIHRpbWVzLgpPbiAxOS8wMy8yMDIwIGF0IDA5OjQ1LCAxMDowMywg
MTA6MzMuCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

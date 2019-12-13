Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D83F11E175
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 11:04:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2W8ebNz/5N4VHr0stFPkWxcEXkklw5HU+UNqMdPQNKU=; b=Enysnvqxx19jqD
	5OsMkHkTVJBMMptsPkICxbltUauY7IMpcB5fdSC5X5/IWHyVKDeIDdZS1a0d56+R/MD1y9ynlAYmV
	yVYtbhkbPDysgRrwJ+K0nZ5FrYFCEBrCockvgoEw5qapQAN+BcyH4hZm3lw24y1FkEsaqG2P0kO7O
	2x/WIbOnxffzKxeKH13szQyBKhAURG7XpuYJX8l+4+YS8VnF7kMo9TThUAli/uc1b4zri/8nfVjBM
	+teKAMS01lGCFDKnC9oGPeS3WrIb1dNOhzVEmR8T1Wh74LqwAoj/wOtiIAAf4f0wYzKqUVMJyaPK0
	WdbO2ViMb9xvW2Axnd8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhoM-0005f7-BS; Fri, 13 Dec 2019 10:04:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifho6-0005VE-Mo; Fri, 13 Dec 2019 10:04:24 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ifhny-0000yI-M1; Fri, 13 Dec 2019 11:04:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Remove always-on properties
 from regulator nodes on rk3399-roc-pc.
Date: Fri, 13 Dec 2019 11:04:14 +0100
Message-ID: <6226306.W37etdpfGF@phil>
In-Reply-To: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
References: <f985665c-86c0-1657-14f8-f77e2ce5a3f7@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_020422_895255_498E3369 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

Am Dienstag, 10. Dezember 2019, 13:44:38 CET schrieb Markus Reichl:
> Some regulators don't need the always-on property, remove it.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6, but please check your mail client as "git am" was quite
unhappy about it, which I fixed up in the patch itself.
Maybe just switch to "git send-email" instead of using Thunderbird.

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

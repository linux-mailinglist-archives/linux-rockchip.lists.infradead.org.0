Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5F0131A55
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 22:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lH9jMLOgw0BtFeLeH9Tmykkhn4Ihrnkfw1Xs8nBjd1E=; b=Sf/gt0LAql8h2/
	5konessF3GPSxf4PztABiiccg7h4e4MS04niaURktuKBnidfv697lrhHU3ybatz4FnaWwEsAq/zlv
	EibX+/F64DKGvfc0MrpdIMb0tUJXm9y4Sp8t+lOJE+7UIXgoW7GD+FVGvpWLphGKvpBDDZgPdT6kt
	4LfRNwnTpqVCbVuiF3kcirGIGwp4dblCn7CLZ90r8BsTmN8UV4gCJ/FfKfSH3ri98YhTKT3VbPFiK
	DVvo9SqCKHFbNafGcBSWHuZBWsAnjwmyIqL4oJqoZIsIYwyZXXSGjGWwQwUg+wHWcSzmI4hEbOCLh
	v6oArHd5nr4b6dPTnyPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZq7-0002ef-5t; Mon, 06 Jan 2020 21:23:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZq3-0002dw-HH; Mon, 06 Jan 2020 21:23:04 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ioZpy-00076R-2U; Mon, 06 Jan 2020 22:22:58 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH 2/5] regulator: mp8859: add config option and build entry
Date: Mon, 06 Jan 2020 22:22:57 +0100
Message-ID: <6648097.OAGuGJg3er@diego>
In-Reply-To: <20200106211633.2882-3-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
 <20200106211633.2882-3-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_132303_725741_EB2414F3 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 6. Januar 2020, 22:16:25 CET schrieb Markus Reichl:
> Add entries for the mp8859 regulator driver
> to the build system.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

this still should get merged into patch1 :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

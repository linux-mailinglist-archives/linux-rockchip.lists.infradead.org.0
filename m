Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD651C6ECC
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 12:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O02ecdd7Zn7DFUC6NodLzyrJeXUBCqxUHr58dQ3gxnc=; b=gWTVVm11rLS2u5
	lESSYki9XWik4SWmaYmVIkJzjsYXM/OJpB/N9ADwqlpQw00q155Z8nGGUin8KFtvq3SHaC3SoaF0y
	UntGXwFQlgieN7VZivx1MkGbupR/247Mc7PToLK0mw7Etys5aseN2omW5Vhnk6KGlkNUXhhQNBT3h
	KaF0oWWVtc/DkpfinYjyB7Ds7Sok5qMxHp++YJF2B5Ye7lfIvvIozseFdkeWBpnOmEXuCIC334Ift
	o00ivOawdVKhE0907WQQB9dpe7rg8WkM+Pw/3rTD1uciqGoOwhCGJ+97urBRjXonIcgPWx0cZ4ezF
	AC5Z0TCD6jr3koGuFSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHkH-0006Jh-89; Wed, 06 May 2020 10:57:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHkE-0006J8-Oq
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 10:57:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jWHkD-0001j5-JN; Wed, 06 May 2020 12:57:41 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix memleak in rockchip_dt_node_to_map
Date: Wed, 06 May 2020 12:57:41 +0200
Message-ID: <12037872.zK0gPHFAvL@diego>
In-Reply-To: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
References: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_035742_802953_9E5E3B0F 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, dafna3@gmail.com,
 linux-gpio@vger.kernel.org, helen.koike@collabora.com, kernel@collabora.com,
 ezequiel@collabora.com, linus.walleij@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 6. Mai 2020, 12:09:03 CEST schrieb Dafna Hirschfeld:
> In function rockchip_dt_node_to_map, a new_map variable is
> allocated by:
> 
> new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
> 		       GFP_KERNEL);
> 
> This uses devres and attaches new_map to the pinctrl driver.
> This cause a leak since new_map is not released when the probed
> driver is removed. Fix it by using kcalloc to allocate new_map
> and free it in `rockchip_dt_free_map`
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

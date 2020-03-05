Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3515E17B0FE
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 22:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DatAvxItvdgrYqXVOAwRf2HbRyJTfFuK1zXnY/hdZc=; b=ZPIUvf8nzdbdFc
	ejk/PvLxiYCg6Gl7Ao8AnVfvRSQ2h1KxEHMccvzY38xvJab7UGypQs904RoKBiSDcSs/ZMxI7wvbz
	QP9Psukcct6jfcPIGSVmrZetc9GexUnfUvgOfemuSQsQD6fiYT5zfVyyin0GgatNSSbRmVgDCiaoO
	hR48D9SN2dcOQW1KTy88vH4jMjjx8ngUD5J4n8DvCSAAK3wrgdI0vl0+1ldT4mJVpu8WZMQAs2hTK
	k6C6lapuujksQC7S2ZMdft4sr86LvowotKGXzEuVsGRzolmX67at3X4r5dTG1B12BFsMzLF3s1jUT
	x4db4ZqOLO91u7V2IDRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ySP-0006JW-7A; Thu, 05 Mar 2020 21:55:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ySK-000617-RG
 for linux-rockchip@lists.infradead.org; Thu, 05 Mar 2020 21:55:02 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55C6D20848;
 Thu,  5 Mar 2020 21:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583445300;
 bh=Cdl9vahemLMywmJ1RilFfSa4r7cnv/R5nzgqZRjdSq8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=rJXlUKeQDf6QcK8xwpc+6ZuNy6qH3lr4C7XXfLnqsj2pwZdn46h3EupRnNqmOYA37
 9juMT46iBfmzso3pbHeARsQAPSfQNVKN+ONB4QLrHlHBDF+ZwPMng/vuG/JeXZQIe/
 LSblxOdkx5sKY2G75akKNpCSzkCKxb+tdAYiVCO8=
MIME-Version: 1.0
In-Reply-To: <20200303192956.64410-1-jbrunet@baylibre.com>
References: <20200303192956.64410-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] clk: rockchip: fix mmc get phase
From: Stephen Boyd <sboyd@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Jerome Brunet <jbrunet@baylibre.com>
Date: Thu, 05 Mar 2020 13:54:59 -0800
Message-ID: <158344529963.25912.17580013895714045674@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_135500_902148_DDB20BD3 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Jerome Brunet (2020-03-03 11:29:56)
> If the mmc clock has no rate, it can be assumed to be constant.
> In such case, there is no measurable phase shift. Just return 0
> in this case instead of returning an error.
> 
> Fixes: 2760878662a2 ("clk: Bail out when calculating phase fails during clk
> registration")
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---

Applied to clk-next right on top of the phase branch.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

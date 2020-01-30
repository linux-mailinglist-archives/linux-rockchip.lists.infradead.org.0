Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CF914DFCA
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 18:20:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VGxh4ZrHmcj3ogpEuHqa75MqrcGehGT54oMhWI6Wao=; b=oa3f9vgbs0J6mv
	z/HaJel2JIatXVKBwt9jOMdiNTElM9UbKGrxvVL1gO+MTlejY90EWLCCfD6mZESgVEx3OsYPAayMm
	V2qUStJN8oydl9Icip0On4xyzi1jSyc4x/NMoxELp6/BeE4sxVuRhVKi1rjCsntMTKiAmW8KzDA9G
	LmWb8KYR4m3dhP+xzNZaEKPvN9+3dhJWMoubDUnNJ2AEs52yrmNcvGutPc/kXAXLfzNRW2Zemho6z
	YUjrMNWqmZVt2SEtr+bS3UuLgWC/0+ZUZGvPgktcMKgNNyWEmgq/mpf/buUCJHKw0KggmsI3lDUJO
	0RZtvjnTDwu18Pf7Y/qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDU3-00071a-PX; Thu, 30 Jan 2020 17:20:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDTa-0006fG-Rv; Thu, 30 Jan 2020 17:19:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0CCB920707;
 Thu, 30 Jan 2020 17:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580404774;
 bh=mQPgzbEOHhaYspRP78UUrq/Qaj0u6VZJGThPXWLnSHY=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=iK8+443QAwMPpiop0hXq0ubpjolSZrcbUh7mtbQykgaG1gmKQUEzDBUC/8BSTD6mQ
 D8o4opy8HvAFdM4KvFk/LriCjnLyo1E/gn5eVINliW397E7upAPYVbW6BKmFpvc+IP
 XezUIg7rsNgIDFmvBdG/OHAveWUK8a9AGKHRhuq4=
MIME-Version: 1.0
In-Reply-To: <20200129163821.1547295-2-heiko@sntech.de>
References: <20200129163821.1547295-1-heiko@sntech.de>
 <20200129163821.1547295-2-heiko@sntech.de>
Subject: Re: [PATCH v3 2/3] clk: rockchip: convert basic pll lock_wait to use
 regmap_read_poll_timeout
To: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 30 Jan 2020 09:19:33 -0800
Message-Id: <20200130171934.0CCB920707@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_091934_953786_D961FE97 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Quoting Heiko Stuebner (2020-01-29 08:38:20)
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Instead of open coding the polling of the lock status, use the
> handy regmap_read_poll_timeout for this. As the pll locking is
> normally blazingly fast and we don't want to incur additional
> delays, we're not doing any sleeps similar to for example the imx
> clk-pllv4 and define a very safe but still short timeout of 1ms.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECE872DB9
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 13:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSjCxsOObgb2Eytd8HURI9it32zbHa2pgImKUo6at/o=; b=uX+Lv70jyfCwNe
	lQ2cwYpvfZgqO48NBWawoh1xnAHKVlY9UOvLGPHk9bDNZn4/TfWZb0v1KVF0TjqbRr3Ct73AN/uED
	BFe8v1M+9zUoTLmKeY2cjhaJel/KiGvIkRpuWiL+BboLaKDldVNTTnixeedFpax4sr6vPE1ZB2vds
	rWd1aYzJ4jtNg7Njz+2DClkCPFkbTpbHoGZ1Rs4DVG9VQpB57yJQlhQFhKY6c2yiFg6+e/JqrmrPZ
	6VhCwurMNK6mRFNnYnMyvxOJH78w5TjIms6OG7t+PcRCaqXRfHLLkcQYCwpRGd45ALr8RZLMLH04X
	rHIvnZHu1Zdzxa3mb2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFY9-000314-Cv; Wed, 24 Jul 2019 11:35:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFY5-0002b8-FN
 for linux-rockchip@lists.infradead.org; Wed, 24 Jul 2019 11:35:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 982836043F; Wed, 24 Jul 2019 11:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968108;
 bh=PKsdsPRKMo4ZtbQ7Rcm2MFURdgVd1dXIYdcVeyVHotc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=bC3UndZkqc+u4v2XFJ7YL3IwOYqPiMYHKgQuOP7R4kPBEdcHeBfN52OYvnz7Bm2fs
 0QEMG/P0HnIYso6zY8V/DQf0kxxBE3YO4j2IIlK4Id0+HRXsdpHHgTCDBaXDtiti9r
 WXGP0+znOw5nW9r73fqoDL2yQmaxADDcyO0aKvTU=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2C2D060388;
 Wed, 24 Jul 2019 11:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563968107;
 bh=PKsdsPRKMo4ZtbQ7Rcm2MFURdgVd1dXIYdcVeyVHotc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=VW56ttPu5ecy3DbKzYVN2m9H6Ds5rU81iJ5LRsA0SbMIR3Zu4oiMBXzoieih/B3HA
 b8jFymaNIe9Rb76bymHkxaEjfDiK0rVqzshUWmn07Rh+V6+BzSeYQrDXU2AZm4bjJU
 XETW08GgbpfVwI8pJ9rjTsAMQisVs1zWmkqA7epg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2C2D060388
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] mwifiex: Make use of the new sdio_trigger_replug()
 API to reset
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190722193939.125578-3-dianders@chromium.org>
References: <20190722193939.125578-3-dianders@chromium.org>
To: Douglas Anderson <dianders@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190724113508.982836043F@smtp.codeaurora.org>
Date: Wed, 24 Jul 2019 11:35:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_043509_557261_DEEC6700 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ganapathi Bhat <gbhat@marvell.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Xinming Hu <huxinming820@gmail.com>, netdev@vger.kernel.org,
 Andreas Fenkart <afenkart@gmail.com>, linux-wireless@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Nishant Sarmukadam <nishants@marvell.com>, Avri Altman <avri.altman@wdc.com>,
 linux-mmc@vger.kernel.org, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Douglas Anderson <dianders@chromium.org> wrote:

> As described in the patch ("mmc: core: Add sdio_trigger_replug()
> API"), the current mwifiex_sdio_card_reset() is broken in the cases
> where we're running Bluetooth on a second SDIO func on the same card
> as WiFi.  The problem goes away if we just use the
> sdio_trigger_replug() API call.
> 
> NOTE: Even though with this new solution there is less of a reason to
> do our work from a workqueue (the unplug / plug mechanism we're using
> is possible for a human to perform at any time so the stack is
> supposed to handle it without it needing to be called from a special
> context), we still need a workqueue because the Marvell reset function
> could called from a context where sleeping is invalid and thus we
> can't claim the host.  One example is Marvell's wakeup_timer_fn().
> 
> Cc: Andreas Fenkart <afenkart@gmail.com>
> Cc: Brian Norris <briannorris@chromium.org>
> Fixes: b4336a282db8 ("mwifiex: sdio: reset adapter using mmc_hw_reset")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Brian Norris <briannorris@chromium.org>

I assume this is going via some other tree so I'm dropping this from my
queue. If I should apply this please resend once the dependency is in
wireless-drivers-next.

Patch set to Not Applicable.

-- 
https://patchwork.kernel.org/patch/11053351/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

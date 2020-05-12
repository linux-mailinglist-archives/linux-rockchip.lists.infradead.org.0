Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4A1CFB2E
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 18:45:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYt95eHBB814AAMdYQ9hBL1XrjuyPYm5PRIzOu4Y+dY=; b=AmOC75Ows6uZFV
	WjjAe9knmuvfUUolgY5BkNhnOJxeYOpHliXXz+okeM4N0FIoFbj6DEQDkYQPmspJe1yypUxc+YTuk
	Kpib4sHNhfY+6Inzelej+m1H+Y/7GhXSKqoTNbPPPHiWQcSIZlj2mvg0y+ShQxLH8NIyIN56i1foH
	ThkmSl7+IqJGh1K6X0xOYQUIh+aoNWkZNhuNZn6JeQdfjGbmtnXUkCDziTpjb0JqumFF3/7znMcGm
	9ikfyklFztl7hbOGuS9wDn0JfDJbOFIbU1vDLxRXPVYBlgok4mQtbEUz9wMa9tYtb5bSqLiLKFPZZ
	6vgVwMY0NEUOc6lwcg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYY1d-0006am-Qb; Tue, 12 May 2020 16:45:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYY1P-0006QL-MD; Tue, 12 May 2020 16:44:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1198206B9;
 Tue, 12 May 2020 16:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589301887;
 bh=Trwo38OmVBD2TlImzx3c+TlSZBTuSuR0SffTOf0cwTA=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=nASl9ChizvQCSHZxqM5SKnNBNtsxJze1bOhEBm/r+ek96uRhxFd21jPbl4IkHLDtY
 g/4XQcCzQEALbK6PoUnVZG1pZ0itOTInxIIrK99bvUOF9VbhlUUi/jqwiISyUndL0j
 EemoVeSFjbqGZkFTHccsawGsW9qlKRal6xO7BUYc=
Date: Tue, 12 May 2020 17:44:44 +0100
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20200507113238.7904-1-jbx6244@gmail.com>
References: <20200507113238.7904-1-jbx6244@gmail.com>
Subject: Re: [PATCH v1] ASoC: rockchip-i2s: add description for rk3308
Message-Id: <158930188455.55827.16068992221946601782.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_094447_744406_0574D95E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 13:32:38 +0200, Johan Jonker wrote:
> The description below is already in use for rk3308.dtsi,
> but was somehow never added to a document, so add
> "rockchip,rk3308-i2s", "rockchip,rk3066-i2s"
> for i2s nodes on a rk3308 platform to rockchip-i2s.yaml.
> One of the rk3308 i2s nodes also has a different dma layout,
> so change that as well.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.8

Thanks!

[1/1] ASoC: rockchip-i2s: add description for rk3308
      commit: ab436c974e08d9254999d7a84d86b1d4c1749230

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

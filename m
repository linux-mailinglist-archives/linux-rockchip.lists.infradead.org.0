Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAA1F79ED
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 Nov 2019 18:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxHVWf1Dt2Y4bseetFMq+brOM5+ILeOf6c5D9XSc3+Y=; b=bfDv/PjgLaXra1
	45N7ULl7FZnl62/b7eYKH7oV+/3ir9d0f2kJrqip4sqfDuG0X1ZWLQQgEHVFLxCY+zakJeQNx/lQO
	6xZLg5mgsXio9eUoqD3p8BnIVVO4Xl1xFgXv3kG0jeTQt9ry0DiBIqfGrlrCE4SF3ctVh1xvAYsC7
	GKGOiPP4Y78CM8h5zuJxWIEYgfK6VALI7kD3WvlBizJ0tJc8s1kVruhs1wA8mXoEhjfkIVEz6n/YX
	OwXYxroD/w49f5bW5GR77iyEwmsY9EKmgGU3nwqpgIgt1udehuVn0iISzZrfVnAdvdYRgCgH+wYj0
	hrPydNPV2mqMjTaRuJhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUDUX-0000Nw-JS; Mon, 11 Nov 2019 17:28:41 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUDUN-0000F5-VM
 for linux-rockchip@lists.infradead.org; Mon, 11 Nov 2019 17:28:33 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m9so8894248vsq.7
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Nov 2019 09:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1OTu7RzLc243iGue7chxiy8Vk2YRX4D1tgtKssbyxYs=;
 b=t5ZpWPMLeBDEvkNCdWobOXpY1rn8mKKbhlJAqH/nClIIPOo8xtotQlHbtDHya4Is2h
 oMEZKC6Qh/5PvNDFNmY7Qo0a3QcMJk8QVG0lTAlBXtjVdwYFZGnwxEfUmx0l/jfycAlA
 wQB0V12uNIgPHHMkZZzhcbKeXCUVhZeNQYZb9vvA6OAYGiQ1jyh3DqSXYUX4O4VUgcbM
 nntC2qRDQHoKCArmi5zgZ9chZOb3Z+WZDSz02rWVMpT8A+tmZWrPjxhJ990eCDT4/D7z
 1KGN6yioFbYO0lWiOBt1hF/sQINuGYPnD6hUG9Ty9K/hpA13WopK8gW42j8mHxk+adXW
 OKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1OTu7RzLc243iGue7chxiy8Vk2YRX4D1tgtKssbyxYs=;
 b=ckqTlSzEM5+q3nIpc20eskNXIceeUGeuMQoMeBEyjD3AeUWEy4WBTgkwf3sYGhXNhz
 QI22QvWDTs9+8x23PTuF3OM128vkHKmzE/WRxjbS+lExGKLv2LQoJlX0GvfJZFffn4rQ
 J+CyIpXu4p5IsHeJ8eNR/IUeB8GIHX4AKZITrzkxb/d732Zfz2SG89FdsCvZiVo0hHpB
 Uomich/YeJdlU0TyZiAHrqydh4RpE/f7Cq5hSqLwDrhEbnloCfGk9+mM5Xa8N+7z8oRC
 wbQYep23iu3RjUg5xHcl6ZPpeCS79RTe/5PnBQ5hP9cgI+PXTpUC/aX/PtuWCz+USyjl
 4g2A==
X-Gm-Message-State: APjAAAUOhENknK/Gj/oLH9cSEhWm9BxeQGeqO0SzfG6gKH6o51GtLPFk
 SbOWIygAI064KpO4Wo7o9c+7kLcfxfiy9BV0JjDyGQ==
X-Google-Smtp-Source: APXvYqwilC07dl1RnIx5npEnNIV0hBMmZ1Z8YLoBy1QbElednuBWAi2IH+P4714/fpUNZRzKUbKdgOH1iwmWYFORaFA=
X-Received: by 2002:a67:ef4e:: with SMTP id k14mr10817201vsr.165.1573493310523; 
 Mon, 11 Nov 2019 09:28:30 -0800 (PST)
MIME-Version: 1.0
References: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
In-Reply-To: <f03c978c-86de-b8bb-22c2-177d7fafed94@fivetechno.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 11 Nov 2019 18:27:54 +0100
Message-ID: <CAPDyKFqn06LZZMXLD2o-M6A0R6KU97PFUTN=NgYnMtf=ESULTA@mail.gmail.com>
Subject: Re: arm64: dts: rockchip: Add SDR104 mode to SD-card I/F on
 rk3399-roc-pc
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_092832_005416_BA2C4689 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 at 15:13, Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> Add SDR104 capability and regulators to SD card node.
> While at it, fix a typo in lcd pinctrl and remove two
> undocumented bindings from pmic.
>
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 31 +++++++++++++++----
>  1 file changed, 25 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 33df95e384b4..e86a6db54499 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -135,6 +135,20 @@
>                 vin-supply = <&vcc_1v8>;
>         };
>
> +       vcc3v0_sd: vcc3v0-sd {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio4 RK_PD6 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&vcc3v0_sd_en>;
> +               regulator-name = "vcc3v0_sd";
> +               regulator-always-on;

This looks odd. A GPIO regulator being always on?

> +               regulator-boot-on;
> +               regulator-min-microvolt = <3000000>;
> +               regulator-max-microvolt = <3000000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };

Assumes this powers an SDIO embedded card. Often those have a specific
power sequence, just wanted to make sure the above are really
sufficient? No delays or external clock needed?

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

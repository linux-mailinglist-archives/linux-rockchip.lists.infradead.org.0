Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B1458DF
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 11:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yi/vVfmACRUd2V4XreZh3fVCYYsYgQ/CpW9jafs4JWc=; b=e6riKE45uxz03u
	/R3LS4I4hlP4UJCls827CiqykyDtx2teHEf4tTvMMPweT898+BKzwk2feQ7zmvWc07MbQOyv0ArZf
	vZXggHEiraEG4lFXQw3eV72z1ayTie1Vyda8PgXCUV5bHqk8DWgZbziMojDF3DJc3457363nUkC7v
	axj/7hPymKFZPq/N2+YXxFMqum+CZZiAMHPsyv8EJoYxlNz7ndZnUawdaBxBxOwihEuMSJlhCZwYZ
	7hgbxV0A1xUdVPPyztrfyR2xEUcIBICjNapDC1gucAdXpYim11gT4jPXQBsFAWxfxIctgC/d88+v8
	Rl7tQzVEQIzR1i2NQvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbieW-0000sC-NE; Fri, 14 Jun 2019 09:37:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbicW-0007mP-0E; Fri, 14 Jun 2019 09:35:44 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbicI-00048J-FR; Fri, 14 Jun 2019 11:35:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones
 conflict in rk3399.dtsi
Date: Fri, 14 Jun 2019 11:35:25 +0200
Message-ID: <5188064.YWmxIpmbGp@phil>
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_023540_315901_0D8CB988 
X-CRM114-Status: GOOD (  16.86  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, dianders@chromium.org, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, robin.murphy@arm.com,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Daniel,

Am Dienstag, 4. Juni 2019, 18:57:57 CEST schrieb Daniel Lezcano:
> Currently the common thermal zones definitions for the rk3399 assumes
> multiple thermal zones are supported by the governors. This is not the
> case and each thermal zone has its own governor instance acting
> individually without collaboration with other governors.
> 
> As the cooling device for the CPU and the GPU thermal zones is the
> same, each governors take different decisions for the same cooling
> device leading to conflicting instructions and an erratic behavior.
> 
> As the cooling-maps is about to become an optional property, let's
> remove the cpu cooling device map from the GPU thermal zone.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 196ac9b78076..e1357e0f60f7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -821,15 +821,6 @@
>  					type = "critical";
>  				};
>  			};
> -
> -			cooling-maps {
> -				map0 {
> -					trip = <&gpu_alert0>;
> -					cooling-device =
> -						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> -				};
> -			};
>  		};
>  	};

my knowledge of the thermal framework is not that big, but what about the
rk3399-devices which further detail the cooling-maps like rk3399-gru-kevin
and the rk3399-nanopc-t4 with its fan-handling in the cooling-maps?


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

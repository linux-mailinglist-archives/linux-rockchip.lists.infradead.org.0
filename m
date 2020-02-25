Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9D116BF16
	for <lists+linux-rockchip@lfdr.de>; Tue, 25 Feb 2020 11:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OJ+nLA0RgH9iBOfQVsYm/jYx8c6f+saPmDcv4oRiQNY=; b=fjDsxAy5eMewDyINUxuhEutHE
	Kpm6iJheN3EMAr0dzr0mYWWJgwbNt/xdpE1pyKmpdorV4QGQWVbvYvskAjqzwGEr1oJtUoC3Ph242
	4mZQ6glnp2euGEGFvlJ3cU0PILhcnJ/KWHtunlnGcHm2oABBaE8Oyoe0o/OPbdH7y9yuEsx1dzTlT
	K68rE4iMsPCSKBYWncc8F/uvG8XTRh9GJzWhvpL4zlABa2Q5vD1C3LtbS+gg5R2oHESua7dC1U2Oy
	jj+wnRt5kQ37WLZiuiFT5qOZnREPG3dA/ndBKngnC9HWRn+bBSS1s6uLTQM8Yu+tU+tdXmUWwKblw
	Qyah9y/6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6XmG-0000y9-Sg; Tue, 25 Feb 2020 10:49:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6XmD-0000xV-UC
 for linux-rockchip@lists.infradead.org; Tue, 25 Feb 2020 10:49:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so14151287wrt.2
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Feb 2020 02:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qvxBxV40TcJIJLO3Ak9rL5n5Z5cRmIQmAn99im24fac=;
 b=NXaA0AxrBsw0PiED/wu5oAlIugHDcLVleHM6WJemvRn1zjMg+CL9RtUIFTGVDB1ufh
 F3PdRnujr3yHd11tjD7MYcu8bu/+tGT+N88bFMZhnYqUkEli0zglutAhZjnyNc0/i/CY
 dHxjazAJDp1mWsdZlnqQn+y6EOjDJaK2cBVUQuWAlNRlHKFScdgRpfi3pTWEuAsFMk50
 fyJKqQFOQrBNxScEBl8zuxRJy9+901G99Je8X4zm2yByLodphoZofIjNHIMJ8/VLzPQg
 3XnWbrCOkLmnlhOeS3nfcHaU7J3ff56qjQSnCvvR9gw73/poO0ORS1mm3GwwOes8iOtm
 Hh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qvxBxV40TcJIJLO3Ak9rL5n5Z5cRmIQmAn99im24fac=;
 b=Zhc4LEiaDAYcgbVXm1p+tgLxjjXcZkFGMszb9XeIP7orGO3EdMkLKOQHW36AuHanOe
 TQ4dKYOb6iupku5Sww2UJim2Z3ctgEvs6cJrwPm4ThkmUaRg4ws2qAqa40Le6rx3O00u
 6MVdFC8k/03ZWpQh2S5/je6nUWccl9yvTkYsYhWaqjmvOxtZ4A9KueJkVC58A3UvPVxp
 7coCrYJ9e4uIWdE4lzLSNc8cFfCQabcCO9gFbB/r+iA3XKCwYZiGPZAt+3jRkc/h5pe6
 MW/ZYIfZgc2z4Vf05pA3v1gN8H1wLQX+S2RdGTSDAWIkx6HeJ6fYpggwfvGWpVR8eMM9
 fL1g==
X-Gm-Message-State: APjAAAUGaFjzI319msghOf30np6UsscbM98mnGB7EiqU9+seFE3W4g8+
 CS1I0gQLdHef2dpgYWpYl/8=
X-Google-Smtp-Source: APXvYqwE82o1PHG1mNSBjfme6ORF0zg+KbPukhHHmTEGr/59HWm+mQeP5u4pY7urYGWwmuA1z5W/dA==
X-Received: by 2002:a05:6000:188:: with SMTP id
 p8mr71310102wrx.336.1582627756154; 
 Tue, 25 Feb 2020 02:49:16 -0800 (PST)
Received: from [192.168.1.94] (93-41-244-45.ip84.fastwebnet.it. [93.41.244.45])
 by smtp.gmail.com with ESMTPSA id s15sm23542690wrp.4.2020.02.25.02.49.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 02:49:15 -0800 (PST)
Subject: Re: [PATCH 3/3] drm/panel: add panel driver for Elida KD35T133 panels
To: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org
References: <20200223150711.194482-1-heiko@sntech.de>
 <20200223150711.194482-3-heiko@sntech.de>
From: Francesco Lavra <francescolavra.fl@gmail.com>
Message-ID: <026a2176-cded-d6ea-7fab-d1425ab3dd5d@gmail.com>
Date: Tue, 25 Feb 2020 11:49:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200223150711.194482-3-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_024921_999797_0EBFFC66 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [francescolavra.fl[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sam@ravnborg.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 robin.murphy@arm.com, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2/23/20 4:07 PM, Heiko Stuebner wrote:
> +static int kd35t133_unprepare(struct drm_panel *panel)
> +{
> +	struct kd35t133 *ctx = panel_to_kd35t133(panel);
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +	int ret;
> +
> +	if (!ctx->prepared)
> +		return 0;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(ctx->dev, "failed to set display off: %d\n",
> +			      ret);
> +
> +	mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0) {
> +		DRM_DEV_ERROR(ctx->dev, "failed to enter sleep mode: %d\n",
> +			      ret);

It looks like you forgot to assign the return value from 
mipi_dsi_dcs_enter_sleep_mode() to ret.

> +		return ret;
> +	}
> +
> +	regulator_disable(ctx->iovcc);
> +	regulator_disable(ctx->vdd);
> +
> +	ctx->prepared = false;
> +
> +	return 0;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

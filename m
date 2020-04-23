Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB31E1B55A7
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 09:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1p/TpvfSNhvJur83a89vSMOdulHyt68BDr8fzRg9feI=; b=rB91M+EtnVryGN
	QQYSku70ekhKDvq2or3c/drIGt16MvFFZAyKNykJSmQPPq2nQtem/ei8MJ7TE+y21LWKYTKHyo6C7
	SazS3LAmdi3jW16nSSwq3Sflm8gJLdfx4E+ymOi0JuX+xgDhVtdpHqA5uXhudoX82iJkUO3EqMs3v
	VrzujSJq2XsJA5qfOYjpxUAFYuuLCnkuRRSyX57rGObos7/Bx+WBzc3YmLxRr2t19lBMZykV4kSj4
	YaAirS9pNb4QuV98yyjZXysbbwVuHujTGUK38gl8IRGR5d6XwzBFn2ckD9OmvQX+0DzZ3YU+eTHFI
	Ck4ZF9B6zprOHrngiW2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRWKI-0002Fv-Pj; Thu, 23 Apr 2020 07:31:14 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRWKE-0002Ds-Qn
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 07:31:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so4832010wrt.5
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 00:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QCHmK+5GfaVz8bbbSowmaOnzegplSKmswr3oSdG1Ntc=;
 b=wHRuCyoYU/1JjFHHLgJzy5f6OLxd/6zex5VtF6Y8xPMvGkeIiIERjXUt3Yw+NBYZOr
 YgqzpaTbrSURXySiGxorVXH2cTNKO5vmz7ISsdQ/dvyNgFiMf597TORn0tn9B6mQ8Aee
 5TzyhRWTUrp0hqap5PjWPA5royN5hN9sHtohj/OoAYa+1IVy9/k/LYW+dCTjtXE4kqhW
 V68KHrWzidCtAlLJwi/NG0r/abQfxKHE/fjaLWv1IosHKt41zcM3yowszB1EALP+9V89
 Vhf8OfJ79+p7RnBMwGKNW7NO9eLRFYvAf7/GDJNe+E43+jT8nHN7WjhytopLZBgFfxmW
 ZxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=QCHmK+5GfaVz8bbbSowmaOnzegplSKmswr3oSdG1Ntc=;
 b=U8JuCGMzXF6QLvQlQceVeFFmuVthKhCgcVbWImtFR9B61XbxCMrL6vscbW2Cpd3OSF
 u4q0vM80Y079mIy8yIJFUzV1MB4q1Ye1iEYxTWMJ3L1KRLh8OD10Ym1dcrOkS/iF+rhi
 C0nh7us7wglVyYAhBflsrEdOZOd5YGZ3R0GhJQz5LIJ55fvuyjbQ6j5JY5X3Z9UjNMf3
 INGS57QdpIjEOmY5VD74F4iijE5YgY5/zw992/Ym5IjFvP8vVanKHa68xRniVhol9BIn
 TBGSJX/PTlR5tWj6SdzclTlDfTSBy9GD82CK3k7eYtwG1ByLWKRq6Vf1DrtMdHJHar5k
 YNWw==
X-Gm-Message-State: AGi0PuatrAt972SD7ObQeQPd2RrQmNAGwUQsbbID2z8NcpfV7npkNqFq
 xpHPLgAbDBHLSPq6lgLYi12yTg==
X-Google-Smtp-Source: APiQypJURckLnLZ0H/WagG5eV1Il3kHdYUP+TbaZp19RH7fgAaUZ5DpZsvJJE3WKzR4nFCtMn0O5IA==
X-Received: by 2002:a5d:4092:: with SMTP id o18mr3262717wrp.227.1587627069178; 
 Thu, 23 Apr 2020 00:31:09 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56?
 ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id j68sm2443417wrj.32.2020.04.23.00.31.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 00:31:08 -0700 (PDT)
Subject: Re: [PATCH v7 0/8] Genericize DW MIPI DSI bridge and add i.MX 6 driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT7CwHsEEwEKACUC
 GyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheABQJXDO2CAhkBAAoJEBaat7Gkz/iubGIH/iyk
 RqvgB62oKOFlgOTYCMkYpm2aAOZZLf6VKHKc7DoVwuUkjHfIRXdslbrxi4pk5VKU6ZP9AKsN
 NtMZntB8WrBTtkAZfZbTF7850uwd3eU5cN/7N1Q6g0JQihE7w4GlIkEpQ8vwSg5W7hkx3yQ6
 2YzrUZh/b7QThXbNZ7xOeSEms014QXazx8+txR7jrGF3dYxBsCkotO/8DNtZ1R+aUvRfpKg5
 ZgABTC0LmAQnuUUf2PHcKFAHZo5KrdO+tyfL+LgTUXIXkK+tenkLsAJ0cagz1EZ5gntuheLD
 YJuzS4zN+1Asmb9kVKxhjSQOcIh6g2tw7vaYJgL/OzJtZi6JlIXOwU0EVid/pAEQAND7AFhr
 5faf/EhDP9FSgYd/zgmb7JOpFPje3uw7jz9wFb28Cf0Y3CcncdElYoBNbRlesKvjQRL8mozV
 9RN+IUMHdUx1akR/A4BPXNdL7StfzKWOCxZHVS+rIQ/fE3Qz/jRmT6t2ZkpplLxVBpdu95qJ
 YwSZjuwFXdC+A7MHtQXYi3UfCgKiflj4+/ITcKC6EF32KrmIRqamQwiRsDcUUKlAUjkCLcHL
 CQvNsDdm2cxdHxC32AVm3Je8VCsH7/qEPMQ+cEZk47HOR3+Ihfn1LEG5LfwsyWE8/JxsU2a1
 q44LQM2lcK/0AKAL20XDd7ERH/FCBKkNVzi+svYJpyvCZCnWT0TRb72mT+XxLWNwfHTeGALE
 +1As4jIS72IglvbtONxc2OIid3tR5rX3k2V0iud0P7Hnz/JTdfvSpVj55ZurOl2XAXUpGbq5
 XRk5CESFuLQV8oqCxgWAEgFyEapI4GwJsvfl/2Er8kLoucYO1Id4mz6N33+omPhaoXfHyLSy
 dxD+CzNJqN2GdavGtobdvv/2V0wukqj86iKF8toLG2/Fia3DxMaGUxqI7GMOuiGZjXPt/et/
 qeOySghdQ7Sdpu6fWc8CJXV2mOV6DrSzc6ZVB4SmvdoruBHWWOR6YnMz01ShFE49pPucyU1h
 Av4jC62El3pdCrDOnWNFMYbbon3vABEBAAHCwn4EGAECAAkFAlYnf6QCGwICKQkQFpq3saTP
 +K7BXSAEGQECAAYFAlYnf6QACgkQd9zb2sjISdGToxAAkOjSfGxp0ulgHboUAtmxaU3viucV
 e2Hl1BVDtKSKmbIVZmEUvx9D06IijFaEzqtKD34LXD6fjl4HIyDZvwfeaZCbJbO10j3k7FJE
 QrBtpdVqkJxme/nYlGOVzcOiKIepNkwvnHVnuVDVPcXyj2wqtsU7VZDDX41z3X4xTQwY3SO1
 9nRO+f+i4RmtJcITgregMa2PcB0LvrjJlWroI+KAKCzoTHzSTpCXMJ1U/dEqyc87bFBdc+DI
 k8mWkPxsccdbs4t+hH0NoE3Kal9xtAl56RCtO/KgBLAQ5M8oToJVatxAjO1SnRYVN1EaAwrR
 xkHdd97qw6nbg9BMcAoa2NMc0/9MeiaQfbgW6b0reIz/haHhXZ6oYSCl15Knkr4t1o3I2Bqr
 Mw623gdiTzotgtId8VfLB2Vsatj35OqIn5lVbi2ua6I0gkI6S7xJhqeyrfhDNgzTHdQVHB9/
 7jnM0ERXNy1Ket6aDWZWCvM59dTyu37g3VvYzGis8XzrX1oLBU/tTXqo1IFqqIAmvh7lI0Se
 gCrXz7UanxCwUbQBFjzGn6pooEHJYRLuVGLdBuoApl/I4dLqCZij2AGa4CFzrn9W0cwm3HCO
 lR43gFyz0dSkMwNUd195FrvfAz7Bjmmi19DnORKnQmlvGe/9xEEfr5zjey1N9+mt3//geDP6
 clwKBkq0JggA+RTEAELzkgPYKJ3NutoStUAKZGiLOFMpHY6KpItbbHjF2ZKIU1whaRYkHpB2
 uLQXOzZ0d7x60PUdhqG3VmFnzXSztA4vsnDKk7x2xw0pMSTKhMafpxaPQJf494/jGnwBHyi3
 h3QGG1RjfhQ/OMTX/HKtAUB2ct3Q8/jBfF0hS5GzT6dYtj0Ci7+8LUsB2VoayhNXMnaBfh+Q
 pAhaFfRZWTjUFIV4MpDdFDame7PB50s73gF/pfQbjw5Wxtes/0FnqydfId95s+eej+17ldGp
 lMv1ok7K0H/WJSdr7UwDAHEYU++p4RRTJP6DHWXcByVlpNQ4SSAiivmWiwOt490+Ac7ATQRN
 WQbPAQgAvIoM384ZRFocFXPCOBir5m2J+96R2tI2XxMgMfyDXGJwFilBNs+fpttJlt2995A8
 0JwPj8SFdm6FBcxygmxBBCc7i/BVQuY8aC0Z/w9Vzt3Eo561r6pSHr5JGHe8hwBQUcNPd/9l
 2ynP57YTSE9XaGJK8gIuTXWo7pzIkTXfN40Wh5jeCCspj4jNsWiYhljjIbrEj300g8RUT2U0
 FcEoiV7AjJWWQ5pi8lZJX6nmB0lc69Jw03V6mblgeZ/1oTZmOepkagwy2zLDXxihf0GowUif
 GphBDeP8elWBNK+ajl5rmpAMNRoKxpN/xR4NzBg62AjyIvigdywa1RehSTfccQARAQABwsBf
 BBgBAgAJBQJNWQbPAhsMAAoJEBaat7Gkz/iuteIH+wZuRDqK0ysAh+czshtG6JJlLW6eXJJR
 Vi7dIPpgFic2LcbkSlvB8E25Pcfz/+tW+04Urg4PxxFiTFdFCZO+prfd4Mge7/OvUcwoSub7
 ZIPo8726ZF5/xXzajahoIu9/hZ4iywWPAHRvprXaim5E/vKjcTeBMJIqZtS4u/UK3EpAX59R
 XVxVpM8zJPbk535ELUr6I5HQXnihQm8l6rt9TNuf8p2WEDxc8bPAZHLjNyw9a/CdeB97m2Tr
 zR8QplXA5kogS4kLe/7/JmlDMO8Zgm9vKLHSUeesLOrjdZ59EcjldNNBszRZQgEhwaarfz46
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <d4cda063-3047-a5cc-a675-1d5008657b97@baylibre.com>
Date: Thu, 23 Apr 2020 09:31:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_003110_938550_EDB405AE 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 21/04/2020 18:16, Adrian Ratiu wrote:
> Hello everyone,
> 
> v7 addresses the points raised by Enric and Laurent in v6.
> Specific details in patch changelogs.
> 
> Two new independent patches were derived from this series
> and posted for review (now they are dependencies for v7):
> 
> Message-ID: 20200421105814.1364900-1-adrian.ratiu@collabora.com
> Web: https://lore.kernel.org/linux-devicetree/20200421105814.1364900-1-adrian.ratiu@collabora.com/T/#u
> 
> and
> 
> Message-ID: 20200420100222.1308898-1-adrian.ratiu@collabora.com
> Web: https://lore.kernel.org/linux-arm-kernel/20200420100222.1308898-1-adrian.ratiu@collabora.com/T/#u

Side note, you can build the following URL from message-id:
http://lore.kernel.org/r/20200420100222.1308898-1-adrian.ratiu@collabora.com

Neil

> 
> Tested on latest linux-next 20200421 with the above two patches
> applied.
> 
> Thank you,
> Adrian
> 
> Adrian Ratiu (8):
>   drm: bridge: dw_mipi_dsi: add initial regmap infrastructure
>   drm: bridge: dw_mipi_dsi: abstract register access using reg_fields
>   drm: bridge: synopsis: add dsi v1.01 support
>   drm: imx: Add i.MX 6 MIPI DSI host platform driver
>   dt-bindings: display: add i.MX6 MIPI DSI host controller doc
>   drm: stm: dw-mipi-dsi: let the bridge handle the HW version check
>   drm: bridge: dw-mipi-dsi: split low power cfg register into fields
>   drm: bridge: dw-mipi-dsi: fix bad register field offsets
> 
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 ++++
>  drivers/gpu/drm/bridge/synopsys/Kconfig       |   1 +
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 692 +++++++++++++-----
>  drivers/gpu/drm/imx/Kconfig                   |   8 +
>  drivers/gpu/drm/imx/Makefile                  |   1 +
>  drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c        | 391 ++++++++++
>  drivers/gpu/drm/stm/dw_mipi_dsi-stm.c         |  12 +-
>  7 files changed, 1035 insertions(+), 205 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
>  create mode 100644 drivers/gpu/drm/imx/dw_mipi_dsi-imx6.c
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

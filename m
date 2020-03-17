Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48AA1885E9
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 14:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCbG4wu4N3J4V7+YA/yCV9xtBtKUnMLQb+PuCyToJ7A=; b=CQkRzfENeSK0Ss
	8+hzbTFAUN3rttQzEQcKNmAPQo1+uO0qigGtuDPN086A+y72kzUKsMKJ/Up3bXsEtgW2qHSQ0FE/S
	97F867AEFyqw2xfWzbbTA4UoP4PNT2J4IyWGLjIM+FMPm2pyHEHpc4PRmqmRSfN/FNG3p2OvIrxwH
	mIuivnpNh0uyS6DvULZ/yuQWS8hZ+T2dK1UL8k/dnO1Dg/S4ZZQlLTCg8SiOK2Av5skMUWESES7LG
	GFbzhJ1Q5gtmt6DYVB3IoEpIRCWRTU1Ox5ClHTG2wh8F65ir+AyLE7vS+/peTQqwk/yoNx8iDWhTz
	iR25Y3p6WeObU9PzcLKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECNK-0006T8-7v; Tue, 17 Mar 2020 13:35:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECMw-0004yJ-IT
 for linux-rockchip@lists.infradead.org; Tue, 17 Mar 2020 13:34:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id h6so5360425wrs.6
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2020 06:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Z+MKHW669WEkjd/iNBh7MeO0SsbRIG9idSMvjhyzbiM=;
 b=KsS6p0MSp52TQAcG7pvBldUBF4ekSYc5JYV6QQ25LYZtQM+GqD03+hDirW88u+gcB8
 i1g1ttt45YwZpoH3hjyZl4FIrK4b4qHgndHYQylhjojW0lVnobwze1ck8wlLy/XOTi8K
 1/HUrbQYGcLlGNCRXu7lDrkKVJFeYDXfkS48I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Z+MKHW669WEkjd/iNBh7MeO0SsbRIG9idSMvjhyzbiM=;
 b=LZK8GNvTVe8sufs+AKjKzpf47LsXYBGjmPIHHLfjwXSQyyaYLjgbP1+MjkYKDz6cVF
 kOeQra+/JlKhhdduoFYpU0o4KF1U6S8LCPB+CzBFZoevJyZCD9VUmtv97zaLSnZZrxO/
 QCJzlsxh1Pt0aTgHskAQ1qDn34k6I+6ceBXCn/7P+3VDH+oiCicTtv/tx4Yy8zeerO3x
 rlyT6VAGu0WXWsYR84e65cBqYdhSuc8sCdjLG4ZJkeDQ4sSJQfGwkr8LD8tew8Mm5tet
 YND/RXkwL2j/ht/qmrZ1qqUaIeg0rCIipQCcogfJtvWDpQbmAsOcPN3tbWt+OS2iF+73
 8KYA==
X-Gm-Message-State: ANhLgQ3cVFhYHvlslclmPtJA2DI5kN88dHQm31dlQ36Baf1j6yA1XbdK
 ZfCJhLsA7JjjFB2x2phsCPGMAQ==
X-Google-Smtp-Source: ADFU+vvJjTHmfHQo38ivXXn/g9YSOLIfUDH6jMyjCpk9QGccwR5GHnql6GYdWNxMSbtwzbwStHLX+w==
X-Received: by 2002:a5d:4d86:: with SMTP id b6mr6080882wru.253.1584452092645; 
 Tue, 17 Mar 2020 06:34:52 -0700 (PDT)
Received: from ub1910 ([213.48.11.149])
 by smtp.gmail.com with ESMTPSA id n6sm4003655wmn.13.2020.03.17.06.34.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 06:34:52 -0700 (PDT)
Date: Tue, 17 Mar 2020 13:34:50 +0000
From: Paul Barker <pbarker@konsulko.com>
To: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Subject: Re: [RFC PATCH 1/7] pwm: rename the PWM_POLARITY_INVERSED enum
Message-ID: <20200317133450.58c25bcb@ub1910>
In-Reply-To: <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
References: <20200317123231.2843297-1-oleksandr.suvorov@toradex.com>
 <20200317123231.2843297-2-oleksandr.suvorov@toradex.com>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_063454_634234_39D74892 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Kevin Hilman <khilman@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 bcm-kernel-feedback-list@broadcom.com, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Tony Prisk <linux@prisktech.co.nz>, Palmer Dabbelt <palmer@dabbelt.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 14:32:25 +0200
Oleksandr Suvorov <oleksandr.suvorov@toradex.com> wrote:

> The polarity enum definition PWM_POLARITY_INVERSED is misspelled.
> Rename it to PWM_POLARITY_INVERTED.
> 
> Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

Looks good. PWM_POLARITY_INVERSED confused me when I was working in this area
recently. After applying to master there's no more instances of
PWM_POLARITY_INVERSED in the source tree.

Reviewed-by: Paul Barker <pbarker@konsulko.com>

-- 
Paul Barker
Konsulko Group

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

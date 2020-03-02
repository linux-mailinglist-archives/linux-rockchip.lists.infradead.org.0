Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F1175B18
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 14:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pycFKmMU3LlvPFa01GNB3TTfEQocNjxVAGFVd7hW1tk=; b=FO1NPOgCCIsogk
	63zq2ljEWFWRiiXA3AKs3F5k+OFL4xrcGHg11lej9+Wf1nUVwn9EmwHGgOxy4KKMEyjqYK+CbuMFl
	r+Al7PB3cHNz/FDUjB+oaWPm/s2QkltVidhF9pg1uX6brkrPXCZoR8UkUubT0GkAPyXhst0br4qN+
	8iWvaTrAebDiQU+aHPXUnHxSlFn599aRL6K52oC9HwI4uaTXETIk+v3Nh915Vw0FwFaZxNjawK0w0
	VjzFLZ2TQBsP739c3DX5MQ1GEgDlud3JJcNcLfO524268CZdkugRB8qlYnc/rXwpm47PsV17geGDq
	rMfiw7djVgz8Q+k22A3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ki7-0005Kt-OK; Mon, 02 Mar 2020 13:02:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ki4-0005KW-Tg
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 13:02:14 +0000
Received: by mail-io1-xd41.google.com with SMTP id h8so11411866iob.2
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Mar 2020 05:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lqxxz7JJyvzc1XovCCalxUt+QaTg6r+wj/lzPIFfba8=;
 b=LYfk6Paa4ieMxhg/+3aFb31tHbrSI12B5Xyuv/gRIjyhmJAqk/yDohyuX+oJJeQNPi
 YGsx90A2Ish4mwV94SBGOAxOp+tH+u+rBWetWLAx02r54ezXc90AYAcUzRbx3uxj5+9b
 VWnSSc/QT2sxs5VB/W+K6EemYj3IVdNI2oOAY5MAn1PWz4CMdFsn2V8GC6lneTtzeo6g
 E8yGQtLvehfcByx4f27qps/nqxtmiDmv/UcofZgo7kwgThEKjw4PGSXDLMAyqbxsq3cb
 pTJ9pp6lNGyMv73NQPPvUnkzYQwidjSzp05FeQo4OVncatq53YDtkr6CGTi3TNjgoH/t
 Q7iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lqxxz7JJyvzc1XovCCalxUt+QaTg6r+wj/lzPIFfba8=;
 b=XOJQAM5h6wyCthaoGYL75E2cDJaIVvIRhHP/DrDCmxoe9MJQIwWicnrOScOtV2YJ3b
 VqlBCQMdmGZ8ZJRM8cvQcQOu9EWMBPMUFyG05EZPOwJcc143Scr1lzig70OiKaIJjqoi
 L8zZKz3Tu3ml6tQdE57wgr0lnmBF5Zgm3yhbIXu7y9IofXUK7eGur9miYlCUhi0hobpK
 siDKfwMXtlRaBybnI7dgMzwgi8pgd6PsPlx7lVeKpeJfcVAEI0sAYV1yiXBwYxYFJf1Z
 oFy0jWw1yr/GhI/4VJ8+QM3XJ38ixtfVjjwVnf+gCfiSNASvCO3QGPOaWInvm4gf9xzJ
 SlPw==
X-Gm-Message-State: APjAAAUmTchehRx7Ouubp8dZWKacSqXjGySTrejAna9ZMt1azHoo9nuE
 rWHmi5ltt7DRT2+pi+qQ5JsYvh2bwSy2muHreC8=
X-Google-Smtp-Source: APXvYqwyB/lTkKVqcHrmP7jmQC2zDn86/1O1evm4wzDClcWRCe21XExK/AFXy8RNFZknx1APQx/SMNeo6a7m5IsHbfY=
X-Received: by 2002:a5d:9599:: with SMTP id a25mr6248474ioo.248.1583154131354; 
 Mon, 02 Mar 2020 05:02:11 -0800 (PST)
MIME-Version: 1.0
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
In-Reply-To: <20200123162845.10651-5-jagan@amarulasolutions.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 2 Mar 2020 13:01:58 +0000
Message-ID: <CALeDE9PO3aKTZ8Z89KhedLfnRxja+mPq1ocwOOfSFm+NRJBr0A@mail.gmail.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_050212_990251_81AD9C3C 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pbrobinson[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, u-boot@lists.denx.de,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdin=serial,cros-ec-keyb\0" \

This should likely be a usb keyboard and not the CrOS EC keyboard.

> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
> +
>  #include <configs/rk3399_common.h>
>
>  #if defined(CONFIG_ENV_IS_IN_MMC)
> --
> 2.18.0.321.gffc6fa0e3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

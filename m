Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2A56AA72
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 16:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uc88tQs+5UeqfQKwzA6pv/Fgt0XMS63khl4rN/tOjHw=; b=IHQ0LA7L8xQbyt
	mgNxHMnhz02kXtMN48lQhNcdJ/BnbzYYJbfrCJmOX5pCYQ2tvtg1exGuQqi7cc4d4WVF9Y41h+XXL
	0j2U/ugbgogd3BYUYJ+frUteEnYbjW8P7za5eEc7hMoreaLC0/1Wn2nzXhbUhlTtQwi1sVFxUU6io
	sWOetKjaoBiiCk/Xuek9Lt4jJKlXI7De8eY8Sv2eUAIe7WLZdAS93nHMB1ByLXL6UIZn0wpKhLtv6
	wy/y+fZgMXCPxhYrsf82PkjvGrj3h31p0unbVWU3q4acYwo+L6Qa5kn6sJkP5MwkgJ7m/N5hHfEvt
	v37ksy7bcWaavY1m+RCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOEZ-0002Sp-GW; Tue, 16 Jul 2019 14:15:11 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOED-0001lj-O1
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 14:14:51 +0000
Received: by mail-ot1-x341.google.com with SMTP id r21so15158690otq.6
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 07:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7p9kaWKWZ1RnK2eKn4KEJD3Gj9Xqk7kKd80amljZoBA=;
 b=WY+b2MmneuNwICa5DrCLXAuS2Ym/kIa/8fMTCjzzSDHJaRASHD8bq7nmIJgrdweSsS
 lW3jjoD5QcJJIyyvCHoMNUlIZNjTS3gwCcZw+OiFN7hXiOSyH9ADvlW2kxHCOuH2cxIu
 tCPLZkrJeyPGTbnAW+q4j5QO0RReazYEWdOD+nCh71seMSMeaod6xltVYqgLck89i1vJ
 ZZ1RfI48FJt7Kn9XZo+yb2BCK+6bo4ZICo6ZZy7vGtmqivPeeukvE1Lo2owGb9dXyase
 pCjnZbOzTFcDjgWgJHPrhRewV2AbCD6W2rQ9OCijtmE14GAPIzcgj+hn06DV9EbJe+MC
 MqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7p9kaWKWZ1RnK2eKn4KEJD3Gj9Xqk7kKd80amljZoBA=;
 b=gshqbjcb2q+jngqJ4KNj3zeRthgXILnHDxiiVk+pGGVyk0iDbVrBY1+p/lz7LeP/cO
 5K/RR2ekuxtHzQeX9LpVd6iNRsS2IwdKlaSg/Ej5bE+aY7lnrcjen7hoHBz55eMZyJJK
 kVNSHuEfnK5YvRk/7UEFSxzjzdBPQgmDSKd1wXhrXk5z4AW6sxXnlpoY69KZ6PtIKjN7
 dwVAqYmI5m6HkyojnsIDGIcrKimkJfxJ0hYkOfoddYwbn6JnZrdjTmi2nM7ELXCof41b
 zntlaoJPgsuFqWn1AHZO0oKhbxgLOwT46CIUbIehGLmfDuDtIgpLS/RDf8m5XtkPI1cl
 XwEQ==
X-Gm-Message-State: APjAAAXSSIxu5+7RHlcokIvrZ2z5DWYOY9EOsX54H7Fl4QYxYgHt1dsq
 lcPa3pg9NJLqMJcV0xdwqASF+BrYXRKD0F8sVOvynA==
X-Google-Smtp-Source: APXvYqxrx8/ntAt3Zd7iJAcVEIJOpeAV8oT/asIVbOOvcJcHbUCdJVyQnJvUXuhuaUoA8KWwL8LQ+jY6q3iS71MyDVI=
X-Received: by 2002:a9d:6195:: with SMTP id g21mr26395560otk.103.1563286487230; 
 Tue, 16 Jul 2019 07:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190716115725.66558-1-cychiang@chromium.org>
 <20190716115725.66558-5-cychiang@chromium.org>
In-Reply-To: <20190716115725.66558-5-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Tue, 16 Jul 2019 22:14:36 +0800
Message-ID: <CA+Px+wV6RSfv4GL8+EJzXGq2nqzKtH9p23VTo2s30h0To2rQtg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] ASoC: rockchip_max98090: Add dai_link for HDMI
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_071449_809313_0F402698 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 7:58 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> diff --git a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
> index b43657e6e655..d610b553ea3b 100644
> --- a/sound/soc/rockchip/Kconfig
> +++ b/sound/soc/rockchip/Kconfig
> @@ -40,9 +40,10 @@ config SND_SOC_ROCKCHIP_MAX98090
>         select SND_SOC_ROCKCHIP_I2S
>         select SND_SOC_MAX98090
>         select SND_SOC_TS3A227E
> +       select SND_SOC_HDMI_CODEC
>         help
>           Say Y or M here if you want to add support for SoC audio on Rockchip
> -         boards using the MAX98090 codec, such as Veyron.
> +         boards using the MAX98090 codec and HDMI codec, such as Veyron.
You should not need to select the option in this patch (but in next
patch), because this patch does not depend on anything from
hdmi-codec.c.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

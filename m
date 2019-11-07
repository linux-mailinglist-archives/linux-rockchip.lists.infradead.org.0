Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFE5F2FF1
	for <lists+linux-rockchip@lfdr.de>; Thu,  7 Nov 2019 14:39:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3qEiOQyz4y1n0TswMTcjgo7ZCsPCz7y0XloXVmcuMs=; b=Q5v2x6avC1CFiA
	KMzP4IIlgm2e7J1iP6A3uqeL1QL0lHUPIF+7Gtzd8IQ9BdoYittjpx+eAPIVVsgWiRRygTq67nH42
	ahWPxO1WN+/kmSPdWuEM4e4E6DrEXFJqLnEPbXaD9yPagM51ag1m8UPcSWDZdLiNru/Uk4BMzmoJm
	p5PPDUBVE8xpYJSkpQzmmTgCVzC83kO7Dizlp3+xCDJG9rXqmg0uhhnzTcUAT6Cguh4X8Z1OfgPE3
	HFG/Cxn00gNpUFw55hRiuvdN02iEgq8k4mWnI8dLFJoEHdROp6MbTwrtY1T2e3kP5U7Cjv4Ttep/F
	lu9vNpOK1ek7uqEGs+8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSi06-0000OK-R7; Thu, 07 Nov 2019 13:39:02 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShzx-0000HJ-VU
 for linux-rockchip@lists.infradead.org; Thu, 07 Nov 2019 13:38:55 +0000
Received: by mail-yb1-xb42.google.com with SMTP id e13so930253ybh.4
 for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2019 05:38:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UR+FMpDRyPvXwNuet63hIA/KDaiYBztB4W2oxpuqt4A=;
 b=csf58IPg/w9lQ2Nl9oTvOEkFzDSskXTPBRw8RrWxLtI2rQy0W4i6vmQjsgLc6BoO+F
 YTwCDTgQVpF7vOqHSlyNAoDkvZPu8DoGhp4BImq5C36qnqFYH+f7ZnATq69eSOifv8Vu
 FSqy2tMQSkpc+MJ5dsMIbD4sVXsKkMrstvBaLhTvk8DoTkXYAaB+uta+3AVkJanTarNL
 EIIb/RnSDc0la+ZBS/pl2Qde1zl1wO453vc7F21/7iTG+a8J6RH+7gXYi/0zBvk5chRL
 se/x7c6J5b1pPsDWS+s/sbSoRs1b+WqYISDDPF9PZqfyCv6ZkcTYwGvP8qxTeqBIOwJ2
 PJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UR+FMpDRyPvXwNuet63hIA/KDaiYBztB4W2oxpuqt4A=;
 b=THA3q3nPiTzfFmbeIWUFZAdZDN+Oqxz0jILK4Y0OtDHqDbgvHypessNUX5dJ/4/+Yx
 9ZtB7QhlxWaeB1nZ/+lydyqxN7CdUkXrbzoJlQFl/OG0oYkWN96yhkfWwpG1y0cIvkcV
 UcU+T+iQE+IR6/zN4UN4W5dq+8pEuPcyJtJDwOcr9QH0wfCMXBp4O6/QDmDi6wEl1scj
 Ek+MF2U53UEkaqNbprE5nFy3lpJArCJFX0xNkPIC3RpanzRH/PqxAEKdddgSeb/gpxXD
 99q6uA9V3pOcR+UBDg6tXNK3AVNDOHRc3sAIOaIfecPb28/5qD71+IkJFJXAeW65xNny
 Xdqg==
X-Gm-Message-State: APjAAAUpMcOOynzBLvUCyBkcvkNSnWqzAdcOUkrsxhLjS154WFhiGIB1
 5cN2TzI0+mDmHQx49WOTGoDtvQ==
X-Google-Smtp-Source: APXvYqxMAOnQy88pixXrXkLY51EbFIn3dNn0lEnxFRVO0u+p/OxQmgx371p0fYm+lPnMmM6+RPfj8A==
X-Received: by 2002:a5b:d07:: with SMTP id y7mr3445302ybp.313.1573133932475;
 Thu, 07 Nov 2019 05:38:52 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id i125sm750756ywa.68.2019.11.07.05.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 05:38:51 -0800 (PST)
Date: Thu, 7 Nov 2019 08:38:51 -0500
From: Sean Paul <sean@poorly.run>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Message-ID: <20191107133851.GF63329@art_vandelay>
References: <20191107092945.15513-1-wambui.karugax@gmail.com>
 <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c74db2614cefe23f888d0643c2d7c356086745a.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_053854_062280_3CE731A1 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
> On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
> > Replace the use of the dev_err macro with the DRM_DEV_ERROR
> > DRM helper macro.
> 
> The commit message should show the reason _why_ you are doing
> this instead of just stating that you are doing this.
> 
> It's not that dev_err is uncommon in drivers/gpu/drm.
> 

It is uncommon (this is the sole instance) in rockchip, however. So it makes
sense to convert the dev_* prints in rockchip to DRM_DEV for consistency.

Wambui, could you also please convert the dev_warn instance as well?

I'll apply this to drm-misc-next and expand on the commit message a bit.

Thanks,

Sean

> $ git grep -w dev_err drivers/gpu/drm | wc -l
> 1950
> $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
> 756
> 
> > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> []
> > @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> >  	}
> >  
> >  	if (!dsi->cdata) {
> > -		dev_err(dev, "no dsi-config for %s node\n", np->name);
> > +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
> >  		return -EINVAL;
> >  	}
> 
> 
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

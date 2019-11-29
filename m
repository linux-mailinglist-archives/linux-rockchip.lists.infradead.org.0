Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BF810D2DD
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 Nov 2019 09:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuHu4xbH44MzZuvB0Cr0XWInzxajMsNvEJdFyqxPhO0=; b=rGPKHcbs+S1dCk
	4FE52baqw8JWVIXsWnZWIey3FTRg1vjr2G906Oqbe/EMX0CirpN5e0+Yqal5/zvzHmtD8UhPtVdD6
	7SimHLAoSrCItX1R2wj/tFflNxZ+prtBtbGFNKfvSUJ/VBmdSb+DWMShpbIdiNB3Yac3zczIcloWg
	ubgIIXw/51op4vO2rGWoSTSWXDrRUiLtdjkMJ90evi8BQCApiYL+8M57OfV0LwBVBh4iFgjVSo9K4
	/ckWnZllSEYUB6BfYOMjl7u3jdw5ffpZtqZwwzPfqVWzFzUdFLyVQocHu38goi0u2BE5iDqKsxZHj
	j/W8Fh5LvuaCn/hQI7sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iac7t-0007aQ-6m; Fri, 29 Nov 2019 08:59:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iac7p-0007Za-1w
 for linux-rockchip@lists.infradead.org; Fri, 29 Nov 2019 08:59:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id b18so34120941wrj.8
 for <linux-rockchip@lists.infradead.org>; Fri, 29 Nov 2019 00:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=u5GY8FgVPiZfsADMBptn3Y6PSbHCbO3IRQ/RMArSlbg=;
 b=WaCYvfhUMHlkOs2je3sgX3kWq4LOuqCfcM5C5gvjPVtvqIQZBs2SGsgN26tSVAC5pA
 45DGd7TCHuA21oZRc0enj8T0z5E40dDifh218um9W0nmFpQX4e/IG7V9eEQna4mxXdfR
 qZ9h41L0d0UCr1jSeEgYsCuBmmsCFNBh5NSY4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=u5GY8FgVPiZfsADMBptn3Y6PSbHCbO3IRQ/RMArSlbg=;
 b=Z1G/oyP0g568ZMBjN/ipuy39s5mhdxOklMUgsIuyJG+RozJmwp4v2h8hkbFKwwkfnh
 ORTEbrb5Jxq9o0oKg6BmD6DCflyAQOOOCvDDclai9MhWY9nAxI8W4J2mgfM8vDiOkuRH
 g4aXQ6UIFJI5JCaieQk6jZaNMWyfxRw7KhUnYBvpdVBuXnOfhlAEAwJ4Ypge0lP2gxkr
 YA9LEzam4x6JT4JBNVBInVYON0bCtSlJA9uNsdJIm9TLvBKqsR4NXrDXujtHNdbVQx08
 yDyp+Mh4ib3rA3FY9k6NAYPi4aYCvgxgPzlXQ+k0EZRNLNLVf3LL5PkZm64KUzlscXMt
 jHzQ==
X-Gm-Message-State: APjAAAW9O1Y3ItTd9fbYdT/HPNKyC3GuQdx1jp9+NPy90Wgo5UPofHJ6
 p/ABR10irGxYW9g1coTxp4nzQQ==
X-Google-Smtp-Source: APXvYqxQxH1gF2m+ItBF4B/ib1eQZiH7CXfgDp23jK65swYScFaH+kUNYyu9PdJjwH0Lm+PBowyTPg==
X-Received: by 2002:adf:9c8a:: with SMTP id d10mr12905084wre.156.1575017977410; 
 Fri, 29 Nov 2019 00:59:37 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id m3sm26197924wrw.20.2019.11.29.00.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 00:59:36 -0800 (PST)
Date: Fri, 29 Nov 2019 09:59:34 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 1/3] drm/rockchip: Use drm_gem_fb_create_with_dirty
Message-ID: <20191129085934.GB406127@phenom.ffwll.local>
References: <20191127180035.416209-1-daniel.vetter@ffwll.ch>
 <0b2b352c-c7fe-1629-3117-f245ed27d4c2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b2b352c-c7fe-1629-3117-f245ed27d4c2@collabora.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_005941_166622_726AF8B7 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 04:58:26PM +0100, Andrzej Pietrasiewicz wrote:
> W dniu 27.11.2019 o=A019:00, Daniel Vetter pisze:
> > If rockchip would switch over to the generic fbdev setup we could
> > grabage collect even more of all this code (all of the remaining fb
> > handling code really).
> > =

> > v2: Actually use _with_dirty like the patch subject promised (Andrzej)
> > =

> > Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sandy Huang <hjc@rock-chips.com>
> > Cc: "Heiko St=FCbner" <heiko@sntech.de>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-rockchip@lists.infradead.org
> =

> I understand that computing min_size is changing as per
> =

> 042bf753842dd
> drm/fourcc: Add char_per_block, block_w and block_h in drm_format_info.

Yeah it's the more flexible computation, but for everything that rockchip
actually supports it should be the same.

> With other questions I had before answered in your previous reply the cur=
rent
> version of this patch is
> =

> Reviewed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>

Thanks for your review, patch applied.
-Daniel

> =

> > ---
> >   drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 54 +---------------------
> >   1 file changed, 1 insertion(+), 53 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_fb.c
> > index ca01234c037c..221e72e71432 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
> > @@ -53,64 +53,12 @@ rockchip_fb_alloc(struct drm_device *dev, const str=
uct drm_mode_fb_cmd2 *mode_cm
> >   	return fb;
> >   }
> > -static struct drm_framebuffer *
> > -rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_=
priv,
> > -			const struct drm_mode_fb_cmd2 *mode_cmd)
> > -{
> > -	const struct drm_format_info *info =3D drm_get_format_info(dev,
> > -								 mode_cmd);
> > -	struct drm_framebuffer *fb;
> > -	struct drm_gem_object *objs[ROCKCHIP_MAX_FB_BUFFER];
> > -	struct drm_gem_object *obj;
> > -	int num_planes =3D min_t(int, info->num_planes, ROCKCHIP_MAX_FB_BUFFE=
R);
> > -	int ret;
> > -	int i;
> > -
> > -	for (i =3D 0; i < num_planes; i++) {
> > -		unsigned int width =3D mode_cmd->width / (i ? info->hsub : 1);
> > -		unsigned int height =3D mode_cmd->height / (i ? info->vsub : 1);
> > -		unsigned int min_size;
> > -
> > -		obj =3D drm_gem_object_lookup(file_priv, mode_cmd->handles[i]);
> > -		if (!obj) {
> > -			DRM_DEV_ERROR(dev->dev,
> > -				      "Failed to lookup GEM object\n");
> > -			ret =3D -ENXIO;
> > -			goto err_gem_object_unreference;
> > -		}
> > -
> > -		min_size =3D (height - 1) * mode_cmd->pitches[i] +
> > -			mode_cmd->offsets[i] +
> > -			width * info->cpp[i];
> > -
> > -		if (obj->size < min_size) {
> > -			drm_gem_object_put_unlocked(obj);
> > -			ret =3D -EINVAL;
> > -			goto err_gem_object_unreference;
> > -		}
> > -		objs[i] =3D obj;
> > -	}
> > -
> > -	fb =3D rockchip_fb_alloc(dev, mode_cmd, objs, i);
> > -	if (IS_ERR(fb)) {
> > -		ret =3D PTR_ERR(fb);
> > -		goto err_gem_object_unreference;
> > -	}
> > -
> > -	return fb;
> > -
> > -err_gem_object_unreference:
> > -	for (i--; i >=3D 0; i--)
> > -		drm_gem_object_put_unlocked(objs[i]);
> > -	return ERR_PTR(ret);
> > -}
> > -
> >   static const struct drm_mode_config_helper_funcs rockchip_mode_config=
_helpers =3D {
> >   	.atomic_commit_tail =3D drm_atomic_helper_commit_tail_rpm,
> >   };
> >   static const struct drm_mode_config_funcs rockchip_drm_mode_config_fu=
ncs =3D {
> > -	.fb_create =3D rockchip_user_fb_create,
> > +	.fb_create =3D drm_gem_fb_create_with_dirty,
> >   	.output_poll_changed =3D drm_fb_helper_output_poll_changed,
> >   	.atomic_check =3D drm_atomic_helper_check,
> >   	.atomic_commit =3D drm_atomic_helper_commit,
> > =

> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

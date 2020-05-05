Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33E1C5824
	for <lists+linux-rockchip@lfdr.de>; Tue,  5 May 2020 16:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUnAZ0Y37mbW2adXuQbcBxCD24GKlnC9z+SSQJVCHwQ=; b=H0/Ayn/b2fRG9l
	Fns6q9nX/cbP8M+OnW9yiFsimKeKIgQ30TTk4oY1gA6e6vFRCovns8Cudla4hGbWl+Ai0th9izkej
	djAHGC4dQhRQ8VR8GVMSjtLjJcXHIwPSfRguPbDWwMAn/pO9R5Qj+bA/Eq4bMR9a4GDw1m5hrXR9d
	jBAbRL9n6rILuiZ5o6gGit9cCu6zCIJDKE9J109i6Ip5Rc1R+TIJG9D7ZzzXPOHRFBxG+AB6leGKl
	E/DlcwjDrMgC3/CoBXVCHFR5C2HbnXLrIGApbEOhIpGlRJo3WWUf0dI8PvM3KX4lIucqGiI6+zAdC
	AGMINV3Wv1rCDi3Ho6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyE2-0000DL-6J; Tue, 05 May 2020 14:07:10 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyCX-00071D-G1
 for linux-rockchip@lists.infradead.org; Tue, 05 May 2020 14:05:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id d16so1867195edq.7
 for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2020 07:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DQhPVNzCwxODV9jjVycfNahbwJl6DrUIjQ9AnoCrWCs=;
 b=YU+6u86++6VWtYwNPHyc1ME4CNkzeonYAyS/jdldZueht1JjMExBXKZ2fwCZZnMaZI
 ZhkNfG4Iq7Wa8TgqlSCI9rUl8C2Q7X0XofiEN2if0Co5+gwFJU/5PxOH4YrwKBPJ5sGz
 zyiacbV9r11JC/U44S4xnE/s0Ymar0Oax5aJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DQhPVNzCwxODV9jjVycfNahbwJl6DrUIjQ9AnoCrWCs=;
 b=BNKlrKXYpeoVGCoe28308mUVbMOoQLgTkFTreyb7LttNlOUSXTqCJ8PBpWYzTFMvnk
 RDLanwZT925jYKcAZUiBzoVSc7SBLCucFOdYO06YPUakduJ84d7htiu+nLAATCX40Vil
 nfiZc/jrnSw2IUs27oN/ROm7T5d1Fkhe9s1ixKRXSy0Ae2IWTuc2SVDW2GZFuEzhM9e3
 njZems7fC6xTSqETWhPG9Lu91MwGGMkapIFiZjrrvjlG4KdElaPkqA7r5UNuA8SBBRaK
 vyPAtoo7ChZUiwN5J9Q9rCFRVQWO6IXtsQwV7qayhCuhzcjG3YEc/vtST+vpFFIl3m8q
 bhWA==
X-Gm-Message-State: AGi0PuZvOZvi6ByDKEVq3q5e+ovaUchZrYmdlZcnlHHIXEIo0z9VaMfF
 4IIFzEOw3drJRoOGzHNpCNepsaHpqgcLfQ==
X-Google-Smtp-Source: APiQypLsfU6mQScxWg43Ux2hnAKh0zE5nxCd+iNbWs51f8etZ9kWzCFyrggL0lh7T22g9PoVLzZ2mQ==
X-Received: by 2002:aa7:d344:: with SMTP id m4mr2822309edr.297.1588687534559; 
 Tue, 05 May 2020 07:05:34 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id m6sm316672ejj.22.2020.05.05.07.05.33
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 07:05:33 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id h9so2944106wrt.0
 for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2020 07:05:33 -0700 (PDT)
X-Received: by 2002:adf:fc4f:: with SMTP id e15mr3926804wrs.415.1588687532834; 
 Tue, 05 May 2020 07:05:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200505134110.3435-1-ezequiel@collabora.com>
 <20200505134110.3435-2-ezequiel@collabora.com>
 <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
 <c29fcc922a4917ac695043e605973ba9649f9c9b.camel@collabora.com>
In-Reply-To: <c29fcc922a4917ac695043e605973ba9649f9c9b.camel@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 5 May 2020 16:05:19 +0200
X-Gmail-Original-Message-ID: <CAAFQd5A458E8iqwakKTDEyTHC+NYY-M1SaTS3m0MARwPaRyOuw@mail.gmail.com>
Message-ID: <CAAFQd5A458E8iqwakKTDEyTHC+NYY-M1SaTS3m0MARwPaRyOuw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070537_646606_26974E6B 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 3:59 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> On Tue, 2020-05-05 at 15:56 +0200, Tomasz Figa wrote:
> > Hi Ezequiel,
> >
> > On Tue, May 5, 2020 at 3:41 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > The driver should only set the payload on .buf_prepare
> > > if the buffer is CAPTURE type, or if an OUTPUT buffer
> > > has a zeroed payload.
> >
> > Thanks for the patch. Just one question below.
> >
> > Where does the requirement to set OUTPUT buffer bytesused to sizeimage
> > if the original bytesused is 0 come from?
> >
>
> If I'm reading english correctly, it's here:
>
> https://www.kernel.org/doc/html/latest/media/uapi/v4l/buffer.html
>
> """
> The number of bytes occupied by the data in the buffer. It depends on the negotiated data format and may change with each buffer for compressed
> variable size data like JPEG images. Drivers must set this field when type refers to a capture stream, applications when it refers to an output
> stream. If the application sets this to 0 for an output stream, then bytesused will be set to the size of the buffer (see the length field of this
> struct) by the driver. For multiplanar formats this field is ignored and the planes pointer is used instead.
> """

Okay, thanks. I wonder if this shouldn't be handled by the core,
though. Especially given that the document refers to the length field
specifically and not the sizeimage set in the format.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

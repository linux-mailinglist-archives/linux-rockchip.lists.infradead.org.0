Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9078C184CFF
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Mar 2020 17:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYO9lQVCYiC6zJJWz1aqSGlYEnll3F1r4801YPd4UwI=; b=qmqfFhtVlMzijs
	0ZtU7g7AiTuGzfF440NgpskjXD2rd05M0I1G/LUNIvQvOuumyK82oeewEttwR8xqtBac/7Z6z1Vse
	Ipz1ooTzM37l5HMLi9KY4TKY/KG5eNREmnMWEhpMS3G752B+H/CRRQ2StJzN2WbUbxCwSHbOUBRLB
	810DtnVdgRWNTCxvYPak4APZDzvWnqM1YbWFuN5DZH+Hg/vDEqTQkZ8M7hRY/e6csqThgLdnHV9Uj
	/0FCZ6P0agGu66FZAGKY7CWMt+ZcbzbSs7lMZHJIKOLFvxtx0Z0o7h9S49RWLw7n8Pn7L6LH8wYrY
	CXA2FdObZUZ0bZmdMsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnXi-0006hO-6m; Fri, 13 Mar 2020 16:52:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnXX-0006WD-QS
 for linux-rockchip@lists.infradead.org; Fri, 13 Mar 2020 16:52:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 61E9529825B
Subject: Re: [PATCH 0/3] media: staging: rkisp1: allow simultaneous streaming
 from multiple capture devices
To: linux-media@vger.kernel.org
References: <20200313014626.3103091-1-helen.koike@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <9673b170-69cf-b951-bc29-76cf05e57fea@collabora.com>
Date: Fri, 13 Mar 2020 13:51:53 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200313014626.3103091-1-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_095203_983424_4C0F9DDB 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 3/12/20 10:46 PM, Helen Koike wrote:
> Hi,
> 
> This series adds support for simultaneous streaming from both capture
> devices (rkisp1_selfpath and rkisp1_mainpath).
> 
> Patch 1/3 fixes return error handling from pm functions, which was
> preventing the second stream to start.
> 
> Patch 2/3 don't allow .s_stream entity callback to be called if a stream is
> already enabled. Which fixes the issue when stopping one stream would
> also stop the other.
> 
> Patch 3/3 serializes start/stop streaming calls, since they both read
> and modify the streaming status of all the entities in the piipeline.
> 
> This series was tested with:
> 
> SEN_DEV=/dev/v4l-subdev3
> ISP_DEV=/dev/v4l-subdev0
> RSZ_SP_DEV=/dev/v4l-subdev2
> RSZ_MP_DEV=/dev/v4l-subdev1
> CAP_SP_DEV=/dev/video1
> CAP_MP_DEV=/dev/video0
> 
> WIDTH=1920
> HEIGHT=1080
> RAW_CODE=SRGGB10_1X10
> YUV_CODE=YUYV8_2X8
> 
> v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $SEN_DEV
> 
> v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $ISP_DEV
> v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
> 
> v4l2-ctl --set-subdev-selection pad=2,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
> v4l2-ctl --set-subdev-fmt pad=2,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $ISP_DEV
> 
> v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV
> v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV
> 
> v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_SP_DEV
> 
> v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV
> v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV
> 
> v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_MP_DEV
> 
> v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_SP_DEV
> v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_MP_DEV
> 
> sleep 1
> 
> v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_SP_DEV --stream-to=/tmp/test_sp.raw &
> v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_MP_DEV --stream-to=/tmp/test_mp.raw &
> 
> wait
> echo "Completed"
> 
> 
> 
> Helen Koike (3):
>   media: staging: rkisp1: cap: fix return values from pm functions
>   media: staging: rkisp1: do not call s_stream if the entity is still in
>     use
>   media: staging: rkisp1: cap: serialize start/stop stream
> 
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 25 ++++++++++++++++---
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 ++
>  drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 ++
>  3 files changed, 25 insertions(+), 4 deletions(-)
> 

Please, ignore this version, I rebased with the wrong branch. I'll send v2.

Thanks
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

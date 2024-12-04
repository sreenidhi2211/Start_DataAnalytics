{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "toc_visible": true,
      "authorship_tag": "ABX9TyP+ZpAte+JDxsW422Y5VFZF",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "ir",
      "display_name": "R"
    },
    "language_info": {
      "name": "R"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/sreenidhi2211/Start_DataAnalytics/blob/main/Campus.r\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "#LOADING THE DATA SET\n",
        "here we loaded ggplot2 library in the notebook\n",
        "Then we read the dataset\n",
        "and found out what are columns in the data frame\n",
        "then structure of data frame"
      ],
      "metadata": {
        "id": "i188925EmzXk"
      }
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "id": "LCJ7cwlgeuT6",
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 1000
        },
        "outputId": "e0e1ed7b-ef0c-47cb-8dbc-12bf2d0d1d33"
      },
      "outputs": [
        {
          "output_type": "stream",
          "name": "stderr",
          "text": [
            "\n",
            "Attaching package: ‘dplyr’\n",
            "\n",
            "\n",
            "The following objects are masked from ‘package:stats’:\n",
            "\n",
            "    filter, lag\n",
            "\n",
            "\n",
            "The following objects are masked from ‘package:base’:\n",
            "\n",
            "    intersect, setdiff, setequal, union\n",
            "\n",
            "\n"
          ]
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A data.frame: 6 × 15</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>sl_no</th><th scope=col>gender</th><th scope=col>ssc_p</th><th scope=col>ssc_b</th><th scope=col>hsc_p</th><th scope=col>hsc_b</th><th scope=col>hsc_s</th><th scope=col>degree_p</th><th scope=col>degree_t</th><th scope=col>workex</th><th scope=col>etest_p</th><th scope=col>specialisation</th><th scope=col>mba_p</th><th scope=col>status</th><th scope=col>salary</th></tr>\n",
              "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>1</th><td>1</td><td>M</td><td>67.00</td><td>Others </td><td>91.00</td><td>Others </td><td>Commerce</td><td>58.00</td><td>Sci&amp;Tech </td><td>No </td><td>55.0</td><td>Mkt&amp;HR </td><td>58.80</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>270000</td></tr>\n",
              "\t<tr><th scope=row>2</th><td>2</td><td>M</td><td>79.33</td><td>Central</td><td>78.33</td><td>Others </td><td>Science </td><td>77.48</td><td>Sci&amp;Tech </td><td>Yes</td><td>86.5</td><td>Mkt&amp;Fin</td><td>66.28</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>200000</td></tr>\n",
              "\t<tr><th scope=row>3</th><td>3</td><td>M</td><td>65.00</td><td>Central</td><td>68.00</td><td>Central</td><td><span style=white-space:pre-wrap>Arts    </span></td><td>64.00</td><td>Comm&amp;Mgmt</td><td>No </td><td>75.0</td><td>Mkt&amp;Fin</td><td>57.80</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>250000</td></tr>\n",
              "\t<tr><th scope=row>4</th><td>4</td><td>M</td><td>56.00</td><td>Central</td><td>52.00</td><td>Central</td><td>Science </td><td>52.00</td><td>Sci&amp;Tech </td><td>No </td><td>66.0</td><td>Mkt&amp;HR </td><td>59.43</td><td>Not Placed</td><td><span style=white-space:pre-wrap>    NA</span></td></tr>\n",
              "\t<tr><th scope=row>5</th><td>5</td><td>M</td><td>85.80</td><td>Central</td><td>73.60</td><td>Central</td><td>Commerce</td><td>73.30</td><td>Comm&amp;Mgmt</td><td>No </td><td>96.8</td><td>Mkt&amp;Fin</td><td>55.50</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>425000</td></tr>\n",
              "\t<tr><th scope=row>6</th><td>6</td><td>M</td><td>55.00</td><td>Others </td><td>49.80</td><td>Others </td><td>Science </td><td>67.25</td><td>Sci&amp;Tech </td><td>Yes</td><td>55.0</td><td>Mkt&amp;Fin</td><td>51.58</td><td>Not Placed</td><td><span style=white-space:pre-wrap>    NA</span></td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA data.frame: 6 × 15\n\n| <!--/--> | sl_no &lt;int&gt; | gender &lt;chr&gt; | ssc_p &lt;dbl&gt; | ssc_b &lt;chr&gt; | hsc_p &lt;dbl&gt; | hsc_b &lt;chr&gt; | hsc_s &lt;chr&gt; | degree_p &lt;dbl&gt; | degree_t &lt;chr&gt; | workex &lt;chr&gt; | etest_p &lt;dbl&gt; | specialisation &lt;chr&gt; | mba_p &lt;dbl&gt; | status &lt;chr&gt; | salary &lt;int&gt; |\n|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n| 1 | 1 | M | 67.00 | Others  | 91.00 | Others  | Commerce | 58.00 | Sci&amp;Tech  | No  | 55.0 | Mkt&amp;HR  | 58.80 | Placed     | 270000 |\n| 2 | 2 | M | 79.33 | Central | 78.33 | Others  | Science  | 77.48 | Sci&amp;Tech  | Yes | 86.5 | Mkt&amp;Fin | 66.28 | Placed     | 200000 |\n| 3 | 3 | M | 65.00 | Central | 68.00 | Central | Arts     | 64.00 | Comm&amp;Mgmt | No  | 75.0 | Mkt&amp;Fin | 57.80 | Placed     | 250000 |\n| 4 | 4 | M | 56.00 | Central | 52.00 | Central | Science  | 52.00 | Sci&amp;Tech  | No  | 66.0 | Mkt&amp;HR  | 59.43 | Not Placed |     NA |\n| 5 | 5 | M | 85.80 | Central | 73.60 | Central | Commerce | 73.30 | Comm&amp;Mgmt | No  | 96.8 | Mkt&amp;Fin | 55.50 | Placed     | 425000 |\n| 6 | 6 | M | 55.00 | Others  | 49.80 | Others  | Science  | 67.25 | Sci&amp;Tech  | Yes | 55.0 | Mkt&amp;Fin | 51.58 | Not Placed |     NA |\n\n",
            "text/latex": "A data.frame: 6 × 15\n\\begin{tabular}{r|lllllllllllllll}\n  & sl\\_no & gender & ssc\\_p & ssc\\_b & hsc\\_p & hsc\\_b & hsc\\_s & degree\\_p & degree\\_t & workex & etest\\_p & specialisation & mba\\_p & status & salary\\\\\n  & <int> & <chr> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <dbl> & <chr> & <int>\\\\\n\\hline\n\t1 & 1 & M & 67.00 & Others  & 91.00 & Others  & Commerce & 58.00 & Sci\\&Tech  & No  & 55.0 & Mkt\\&HR  & 58.80 & Placed     & 270000\\\\\n\t2 & 2 & M & 79.33 & Central & 78.33 & Others  & Science  & 77.48 & Sci\\&Tech  & Yes & 86.5 & Mkt\\&Fin & 66.28 & Placed     & 200000\\\\\n\t3 & 3 & M & 65.00 & Central & 68.00 & Central & Arts     & 64.00 & Comm\\&Mgmt & No  & 75.0 & Mkt\\&Fin & 57.80 & Placed     & 250000\\\\\n\t4 & 4 & M & 56.00 & Central & 52.00 & Central & Science  & 52.00 & Sci\\&Tech  & No  & 66.0 & Mkt\\&HR  & 59.43 & Not Placed &     NA\\\\\n\t5 & 5 & M & 85.80 & Central & 73.60 & Central & Commerce & 73.30 & Comm\\&Mgmt & No  & 96.8 & Mkt\\&Fin & 55.50 & Placed     & 425000\\\\\n\t6 & 6 & M & 55.00 & Others  & 49.80 & Others  & Science  & 67.25 & Sci\\&Tech  & Yes & 55.0 & Mkt\\&Fin & 51.58 & Not Placed &     NA\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  sl_no gender ssc_p ssc_b   hsc_p hsc_b   hsc_s    degree_p degree_t  workex\n",
              "1 1     M      67.00 Others  91.00 Others  Commerce 58.00    Sci&Tech  No    \n",
              "2 2     M      79.33 Central 78.33 Others  Science  77.48    Sci&Tech  Yes   \n",
              "3 3     M      65.00 Central 68.00 Central Arts     64.00    Comm&Mgmt No    \n",
              "4 4     M      56.00 Central 52.00 Central Science  52.00    Sci&Tech  No    \n",
              "5 5     M      85.80 Central 73.60 Central Commerce 73.30    Comm&Mgmt No    \n",
              "6 6     M      55.00 Others  49.80 Others  Science  67.25    Sci&Tech  Yes   \n",
              "  etest_p specialisation mba_p status     salary\n",
              "1 55.0    Mkt&HR         58.80 Placed     270000\n",
              "2 86.5    Mkt&Fin        66.28 Placed     200000\n",
              "3 75.0    Mkt&Fin        57.80 Placed     250000\n",
              "4 66.0    Mkt&HR         59.43 Not Placed     NA\n",
              "5 96.8    Mkt&Fin        55.50 Placed     425000\n",
              "6 55.0    Mkt&Fin        51.58 Not Placed     NA"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".list-inline {list-style: none; margin:0; padding: 0}\n",
              ".list-inline>li {display: inline-block}\n",
              ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
              "</style>\n",
              "<ol class=list-inline><li>'sl_no'</li><li>'gender'</li><li>'ssc_p'</li><li>'ssc_b'</li><li>'hsc_p'</li><li>'hsc_b'</li><li>'hsc_s'</li><li>'degree_p'</li><li>'degree_t'</li><li>'workex'</li><li>'etest_p'</li><li>'specialisation'</li><li>'mba_p'</li><li>'status'</li><li>'salary'</li></ol>\n"
            ],
            "text/markdown": "1. 'sl_no'\n2. 'gender'\n3. 'ssc_p'\n4. 'ssc_b'\n5. 'hsc_p'\n6. 'hsc_b'\n7. 'hsc_s'\n8. 'degree_p'\n9. 'degree_t'\n10. 'workex'\n11. 'etest_p'\n12. 'specialisation'\n13. 'mba_p'\n14. 'status'\n15. 'salary'\n\n\n",
            "text/latex": "\\begin{enumerate*}\n\\item 'sl\\_no'\n\\item 'gender'\n\\item 'ssc\\_p'\n\\item 'ssc\\_b'\n\\item 'hsc\\_p'\n\\item 'hsc\\_b'\n\\item 'hsc\\_s'\n\\item 'degree\\_p'\n\\item 'degree\\_t'\n\\item 'workex'\n\\item 'etest\\_p'\n\\item 'specialisation'\n\\item 'mba\\_p'\n\\item 'status'\n\\item 'salary'\n\\end{enumerate*}\n",
            "text/plain": [
              " [1] \"sl_no\"          \"gender\"         \"ssc_p\"          \"ssc_b\"         \n",
              " [5] \"hsc_p\"          \"hsc_b\"          \"hsc_s\"          \"degree_p\"      \n",
              " [9] \"degree_t\"       \"workex\"         \"etest_p\"        \"specialisation\"\n",
              "[13] \"mba_p\"          \"status\"         \"salary\"        "
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "     sl_no          gender              ssc_p          ssc_b          \n",
              " Min.   :  1.0   Length:215         Min.   :40.89   Length:215        \n",
              " 1st Qu.: 54.5   Class :character   1st Qu.:60.60   Class :character  \n",
              " Median :108.0   Mode  :character   Median :67.00   Mode  :character  \n",
              " Mean   :108.0                      Mean   :67.30                     \n",
              " 3rd Qu.:161.5                      3rd Qu.:75.70                     \n",
              " Max.   :215.0                      Max.   :89.40                     \n",
              "                                                                      \n",
              "     hsc_p          hsc_b              hsc_s              degree_p    \n",
              " Min.   :37.00   Length:215         Length:215         Min.   :50.00  \n",
              " 1st Qu.:60.90   Class :character   Class :character   1st Qu.:61.00  \n",
              " Median :65.00   Mode  :character   Mode  :character   Median :66.00  \n",
              " Mean   :66.33                                         Mean   :66.37  \n",
              " 3rd Qu.:73.00                                         3rd Qu.:72.00  \n",
              " Max.   :97.70                                         Max.   :91.00  \n",
              "                                                                      \n",
              "   degree_t            workex             etest_p     specialisation    \n",
              " Length:215         Length:215         Min.   :50.0   Length:215        \n",
              " Class :character   Class :character   1st Qu.:60.0   Class :character  \n",
              " Mode  :character   Mode  :character   Median :71.0   Mode  :character  \n",
              "                                       Mean   :72.1                     \n",
              "                                       3rd Qu.:83.5                     \n",
              "                                       Max.   :98.0                     \n",
              "                                                                        \n",
              "     mba_p          status              salary      \n",
              " Min.   :51.21   Length:215         Min.   :200000  \n",
              " 1st Qu.:57.95   Class :character   1st Qu.:240000  \n",
              " Median :62.00   Mode  :character   Median :265000  \n",
              " Mean   :62.28                      Mean   :288655  \n",
              " 3rd Qu.:66.25                      3rd Qu.:300000  \n",
              " Max.   :77.89                      Max.   :940000  \n",
              "                                    NA's   :67      "
            ]
          },
          "metadata": {}
        }
      ],
      "source": [
        "library(ggplot2)\n",
        "library(dplyr)\n",
        "location<-(\"/content/campusass.csv\")\n",
        "campus<-read.csv(lcampuscampus)\n",
        "colnames(campusy(campus)"
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "#DATA PREPARATION\n",
        "1.Does null values exist\n",
        "2.No:of columns with nul values"
      ],
      "metadata": {
        "id": "MgdQ-Lgu2YBg"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "any(is.na(campus))"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 34
        },
        "id": "kBCd1bGr6yWA",
        "outputId": "fa717234-d640-43cf-9a02-e422b82e062e"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "TRUE"
            ],
            "text/markdown": "TRUE",
            "text/latex": "TRUE",
            "text/plain": [
              "[1] TRUE"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "colSums(is.na(campus))"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 52
        },
        "id": "WPMX27Yk7cAk",
        "outputId": "2373442d-2ba6-40d8-aea7-110e6e19dda2"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".dl-inline {width: auto; margin:0; padding: 0}\n",
              ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
              ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
              ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
              "</style><dl class=dl-inline><dt>sl_no</dt><dd>0</dd><dt>gender</dt><dd>0</dd><dt>ssc_p</dt><dd>0</dd><dt>ssc_b</dt><dd>0</dd><dt>hsc_p</dt><dd>0</dd><dt>hsc_b</dt><dd>0</dd><dt>hsc_s</dt><dd>0</dd><dt>degree_p</dt><dd>0</dd><dt>degree_t</dt><dd>0</dd><dt>workex</dt><dd>0</dd><dt>etest_p</dt><dd>0</dd><dt>specialisation</dt><dd>0</dd><dt>mba_p</dt><dd>0</dd><dt>status</dt><dd>0</dd><dt>salary</dt><dd>67</dd></dl>\n"
            ],
            "text/markdown": "sl_no\n:   0gender\n:   0ssc_p\n:   0ssc_b\n:   0hsc_p\n:   0hsc_b\n:   0hsc_s\n:   0degree_p\n:   0degree_t\n:   0workex\n:   0etest_p\n:   0specialisation\n:   0mba_p\n:   0status\n:   0salary\n:   67\n\n",
            "text/latex": "\\begin{description*}\n\\item[sl\\textbackslash{}\\_no] 0\n\\item[gender] 0\n\\item[ssc\\textbackslash{}\\_p] 0\n\\item[ssc\\textbackslash{}\\_b] 0\n\\item[hsc\\textbackslash{}\\_p] 0\n\\item[hsc\\textbackslash{}\\_b] 0\n\\item[hsc\\textbackslash{}\\_s] 0\n\\item[degree\\textbackslash{}\\_p] 0\n\\item[degree\\textbackslash{}\\_t] 0\n\\item[workex] 0\n\\item[etest\\textbackslash{}\\_p] 0\n\\item[specialisation] 0\n\\item[mba\\textbackslash{}\\_p] 0\n\\item[status] 0\n\\item[salary] 67\n\\end{description*}\n",
            "text/plain": [
              "         sl_no         gender          ssc_p          ssc_b          hsc_p \n",
              "             0              0              0              0              0 \n",
              "         hsc_b          hsc_s       degree_p       degree_t         workex \n",
              "             0              0              0              0              0 \n",
              "       etest_p specialisation          mba_p         status         salary \n",
              "             0              0              0              0             67 "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "head(campus)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 286
        },
        "id": "bvErCAOI-4YK",
        "outputId": "78f18dbd-8c56-4269-8663-4af2947d939e"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A data.frame: 6 × 15</caption>\n",
              "<thead>\n",
              "\t<tr><th></th><th scope=col>sl_no</th><th scope=col>gender</th><th scope=col>ssc_p</th><th scope=col>ssc_b</th><th scope=col>hsc_p</th><th scope=col>hsc_b</th><th scope=col>hsc_s</th><th scope=col>degree_p</th><th scope=col>degree_t</th><th scope=col>workex</th><th scope=col>etest_p</th><th scope=col>specialisation</th><th scope=col>mba_p</th><th scope=col>status</th><th scope=col>salary</th></tr>\n",
              "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><th scope=row>1</th><td>1</td><td>M</td><td>67.00</td><td>Others </td><td>91.00</td><td>Others </td><td>Commerce</td><td>58.00</td><td>Sci&amp;Tech </td><td>No </td><td>55.0</td><td>Mkt&amp;HR </td><td>58.80</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>270000</td></tr>\n",
              "\t<tr><th scope=row>2</th><td>2</td><td>M</td><td>79.33</td><td>Central</td><td>78.33</td><td>Others </td><td>Science </td><td>77.48</td><td>Sci&amp;Tech </td><td>Yes</td><td>86.5</td><td>Mkt&amp;Fin</td><td>66.28</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>200000</td></tr>\n",
              "\t<tr><th scope=row>3</th><td>3</td><td>M</td><td>65.00</td><td>Central</td><td>68.00</td><td>Central</td><td><span style=white-space:pre-wrap>Arts    </span></td><td>64.00</td><td>Comm&amp;Mgmt</td><td>No </td><td>75.0</td><td>Mkt&amp;Fin</td><td>57.80</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>250000</td></tr>\n",
              "\t<tr><th scope=row>4</th><td>4</td><td>M</td><td>56.00</td><td>Central</td><td>52.00</td><td>Central</td><td>Science </td><td>52.00</td><td>Sci&amp;Tech </td><td>No </td><td>66.0</td><td>Mkt&amp;HR </td><td>59.43</td><td>Not Placed</td><td><span style=white-space:pre-wrap>    NA</span></td></tr>\n",
              "\t<tr><th scope=row>5</th><td>5</td><td>M</td><td>85.80</td><td>Central</td><td>73.60</td><td>Central</td><td>Commerce</td><td>73.30</td><td>Comm&amp;Mgmt</td><td>No </td><td>96.8</td><td>Mkt&amp;Fin</td><td>55.50</td><td><span style=white-space:pre-wrap>Placed    </span></td><td>425000</td></tr>\n",
              "\t<tr><th scope=row>6</th><td>6</td><td>M</td><td>55.00</td><td>Others </td><td>49.80</td><td>Others </td><td>Science </td><td>67.25</td><td>Sci&amp;Tech </td><td>Yes</td><td>55.0</td><td>Mkt&amp;Fin</td><td>51.58</td><td>Not Placed</td><td><span style=white-space:pre-wrap>    NA</span></td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA data.frame: 6 × 15\n\n| <!--/--> | sl_no &lt;int&gt; | gender &lt;chr&gt; | ssc_p &lt;dbl&gt; | ssc_b &lt;chr&gt; | hsc_p &lt;dbl&gt; | hsc_b &lt;chr&gt; | hsc_s &lt;chr&gt; | degree_p &lt;dbl&gt; | degree_t &lt;chr&gt; | workex &lt;chr&gt; | etest_p &lt;dbl&gt; | specialisation &lt;chr&gt; | mba_p &lt;dbl&gt; | status &lt;chr&gt; | salary &lt;int&gt; |\n|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n| 1 | 1 | M | 67.00 | Others  | 91.00 | Others  | Commerce | 58.00 | Sci&amp;Tech  | No  | 55.0 | Mkt&amp;HR  | 58.80 | Placed     | 270000 |\n| 2 | 2 | M | 79.33 | Central | 78.33 | Others  | Science  | 77.48 | Sci&amp;Tech  | Yes | 86.5 | Mkt&amp;Fin | 66.28 | Placed     | 200000 |\n| 3 | 3 | M | 65.00 | Central | 68.00 | Central | Arts     | 64.00 | Comm&amp;Mgmt | No  | 75.0 | Mkt&amp;Fin | 57.80 | Placed     | 250000 |\n| 4 | 4 | M | 56.00 | Central | 52.00 | Central | Science  | 52.00 | Sci&amp;Tech  | No  | 66.0 | Mkt&amp;HR  | 59.43 | Not Placed |     NA |\n| 5 | 5 | M | 85.80 | Central | 73.60 | Central | Commerce | 73.30 | Comm&amp;Mgmt | No  | 96.8 | Mkt&amp;Fin | 55.50 | Placed     | 425000 |\n| 6 | 6 | M | 55.00 | Others  | 49.80 | Others  | Science  | 67.25 | Sci&amp;Tech  | Yes | 55.0 | Mkt&amp;Fin | 51.58 | Not Placed |     NA |\n\n",
            "text/latex": "A data.frame: 6 × 15\n\\begin{tabular}{r|lllllllllllllll}\n  & sl\\_no & gender & ssc\\_p & ssc\\_b & hsc\\_p & hsc\\_b & hsc\\_s & degree\\_p & degree\\_t & workex & etest\\_p & specialisation & mba\\_p & status & salary\\\\\n  & <int> & <chr> & <dbl> & <chr> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <dbl> & <chr> & <int>\\\\\n\\hline\n\t1 & 1 & M & 67.00 & Others  & 91.00 & Others  & Commerce & 58.00 & Sci\\&Tech  & No  & 55.0 & Mkt\\&HR  & 58.80 & Placed     & 270000\\\\\n\t2 & 2 & M & 79.33 & Central & 78.33 & Others  & Science  & 77.48 & Sci\\&Tech  & Yes & 86.5 & Mkt\\&Fin & 66.28 & Placed     & 200000\\\\\n\t3 & 3 & M & 65.00 & Central & 68.00 & Central & Arts     & 64.00 & Comm\\&Mgmt & No  & 75.0 & Mkt\\&Fin & 57.80 & Placed     & 250000\\\\\n\t4 & 4 & M & 56.00 & Central & 52.00 & Central & Science  & 52.00 & Sci\\&Tech  & No  & 66.0 & Mkt\\&HR  & 59.43 & Not Placed &     NA\\\\\n\t5 & 5 & M & 85.80 & Central & 73.60 & Central & Commerce & 73.30 & Comm\\&Mgmt & No  & 96.8 & Mkt\\&Fin & 55.50 & Placed     & 425000\\\\\n\t6 & 6 & M & 55.00 & Others  & 49.80 & Others  & Science  & 67.25 & Sci\\&Tech  & Yes & 55.0 & Mkt\\&Fin & 51.58 & Not Placed &     NA\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  sl_no gender ssc_p ssc_b   hsc_p hsc_b   hsc_s    degree_p degree_t  workex\n",
              "1 1     M      67.00 Others  91.00 Others  Commerce 58.00    Sci&Tech  No    \n",
              "2 2     M      79.33 Central 78.33 Others  Science  77.48    Sci&Tech  Yes   \n",
              "3 3     M      65.00 Central 68.00 Central Arts     64.00    Comm&Mgmt No    \n",
              "4 4     M      56.00 Central 52.00 Central Science  52.00    Sci&Tech  No    \n",
              "5 5     M      85.80 Central 73.60 Central Commerce 73.30    Comm&Mgmt No    \n",
              "6 6     M      55.00 Others  49.80 Others  Science  67.25    Sci&Tech  Yes   \n",
              "  etest_p specialisation mba_p status     salary\n",
              "1 55.0    Mkt&HR         58.80 Placed     270000\n",
              "2 86.5    Mkt&Fin        66.28 Placed     200000\n",
              "3 75.0    Mkt&Fin        57.80 Placed     250000\n",
              "4 66.0    Mkt&HR         59.43 Not Placed     NA\n",
              "5 96.8    Mkt&Fin        55.50 Placed     425000\n",
              "6 55.0    Mkt&Fin        51.58 Not Placed     NA"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "table(campus$status)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 72
        },
        "id": "vi4URsJ1CkJL",
        "outputId": "ec25853a-e9e7-461b-ebab-a8af09e09bf6"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "Not Placed     Placed \n",
              "        67        148 "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "table(campus$specialisation)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 72
        },
        "id": "UjtNN5I96hAI",
        "outputId": "7e32679f-f20d-4319-9835-078abc34d47f"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "Mkt&Fin  Mkt&HR \n",
              "    120      95 "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "#EDA\n"
      ],
      "metadata": {
        "id": "wf6is5hT_7VM"
      }
    },
    {
      "cell_type": "markdown",
      "source": [
        "#FACTORS AFFECTING THE PLACEMENT\n",
        "**Does percentage affect the placement**"
      ],
      "metadata": {
        "id": "oDcd2uM9gMfE"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "# Boxplot to find relationship between placement status and ssc percentage\n",
        "ggplot(campus, aes(x=status, y=ssc_p)) +\n",
        "  geom_boxplot() +\n",
        "  ggtitle(\"SSC Percentage vs Placement Status\") +\n",
        "  xlab(\"Placement Status\") +\n",
        "  ylab(\"SSC Percentage\")\n",
        "\n",
        "# Similarly, we can check for HSC and degree percentages\n",
        "ggplot(campus, aes(x=status, y=hsc_p)) +geom_boxplot() +ggtitle(\"HSC Percentage vs Placement Status\") +xlab(\"Placement Status\") +ylab(\"HSC Percentage\")\n",
        "\n",
        "ggplot(campus, aes(x=status, y=degree_p)) +\n",
        "  geom_boxplot() +\n",
        "  ggtitle(\"Degree Percentage vs Placement Status\") +\n",
        "  xlab(\"Placement Status\") +\n",
        "  ylab(\"Degree Percentage\")\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 1000
        },
        "id": "jer2OGWRGrva",
        "outputId": "8b7f3870-709f-45f6-c99c-179beae0d367"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dd4AU5d3A8QfhQMphjGBBCSYh\n0RjFmLWg5FQ0akxyBwhYAGlqNECCogYVpahAokEMvjGIJWIjBI0FiIgdDUWjWAhGETRKERGE\noxxw5Xlndu722sIex2+feeaZ7+ePLbOF387Ml9vdWxalAew1FfYAgAsICRBASIAAQgIEEBIg\ngJAAAYQECCCkqkaou8IeAdG0NyG9/+sfHdSoxQ+vWJr2rF47umOrxoeefPuXlbdYrJJyDu05\nby/+3Iee3osbV1djoCyEVG3Y6quo9uMQfGQway9CeiRHHdt/UI82qsk/05zVU5upnOPPOqqx\n2v+51E0WqxYXeM5qqxr8qf5/8MGX1P+2NdQYKAshVR22xiqq/TgEHxnMqn9IG5s3fNw/Lh2j\nvlVc66yepvYZsck7Xvtb1fDtitssVt9NHpfepRp/Vt8/eLmSDKnaQPIhVR22xiqq/TgkHxnM\nqn9IL6uO5af6DVtd62zhN9Rfys8PV7+quE3Ffqv1GWqyd1h2b8cW+x554xbv5A3q6T+32c/b\ny/58fPMWZ7yqq196o3p6SdfWTY59TOvu/nOxTlpvuu7IfRu3v8aPVf/volZNj39ivTqx+q2S\nTlPPJI9nqjO0ntF5/5xDfvZPvYuBgpCq3vMux5l/WotW/QrLJh7R9AfjyjIOm2aN1X4c5UsG\nq7/611mgfqFrDwxL1T+kt9X3S3d99m51fMXJov+lllbut1eom73DPuqQq2/oqH5UqPVoNazZ\nRZdp3UMdNah3C/VQ9UtvVqP3O/uqXyj1op7VX3Wc+He9M08lrhl6hDqhROuv2qpOoy7Z91Z1\navVbJd2j+iWPL/b2zymq9eU3Dfxmg4d2MVAypKr3vMtxrv/GBYMPUxcPb3tF38aZh023imo/\njvIlVUOqNTAsVf+Qio9UZ7+9y7Pd1YQ0t6ncb09XD2g9XSW8/a5siLpO63FqP/+11DR1rrf/\n/rdZ883VLh2vGj/sXXqNH8WM5BOgJ1RH74o7jvR/3oxQPb0l/2qqTqt+n0kbGu+/0zvavl/T\nQn2M+tg7+Xlux10MlAyp6j3vcpwmL3s/BxvmHLle6/vUL3WGYdOuotqPI1hSNaRaA8NSe/Fm\nwwdHKdWu95/fS3v2ODU3zU0q9tuyyar5l1r/NLjS1zmH+Htfcmc5W73mH028enmNS5PPjxap\nkyt2t0/+8aa/ZLi6VesO6g3/9AA/pKq3CuSrOd7hU+pCrds2WOMv2bGrgZIhVb3nXY5zjn/6\nR+rP3uEX6gc1H0rNYdOuotqPo3ZItQaGpfbm7e+S6ecf7D2rb3vr9tpn26sFaW5R/ibZud9W\nOdO8sy1U8ErmOPU/b++7yj/ZXG2ruHL1S6/2T36kflR13yxcs2aMGqFLG+/j/8zRj/shVb1V\nYJq61DvspWZrPUgdef+a3QyUerOh/J53Pc5w/+Spycy2qcPrMmytVVTrcaQJqdbAsNTe/kJ2\n+UPnN1cn7qh19scq3Qvk8l/bNDq092Lt74Ep8729b5y3aIvat+K6NS693V+2TB2b2gGf7LRv\n8sIRepPaL3mLN72Qqt0qsLVFqxJdlHtgsffy5/IcpY763YpdDFQeUuU9ZxjnNPWBd1ik2mUc\nNt0aq/U40oRUa2BYSuCTDV8cnXqDrvLsRck3E2qqfEniK1INRpVbUb73bVMNy3Z9adV98x6V\ne+Vjs5+93NsBN6pvJG/xby+karcq19t71f+E+m3y9OrJXXJV4+npBwpCqnLPGcapDCnDsGnX\nWK3HkSakWgPDUnsR0lcV+9jdamCts/er7xaXny+7+YOKm9TYb/dTlZ96KN/7ctW63VxaZd88\nVCXfkx7p7YAlDRv6b7DpJ/2ndlVvVW62GqQvVG9WnC36S6NvbE8/UDKkKvecYZzKkDIMW676\nKqr1OMqXDPHf9tD6H0FINQaGpeof0impJ2+jvR215tltB6rflZ+/VZ1ScZsa++3ZKvkLSr1e\np/a+zsp/raLHnfmvdJdW7pvbVQt/QdmJ/g7YXi3xz1zuh1T1VuWKW7Xd1vxI/9Snq5MLTlUV\nH2NKE1K1e979OFVC2u2w6ddY7ccRXPma4A3P6/2Qag0MS9U/pFtV6+QbVWWPN1Mv1zqrZzZQ\nA/yXyWsGqZapvaDGfjtdHe3/PT6vUY/U3vegSniv2j/Zv9mGdJcm982Zqqt38pvqM+8PG32w\nGuw/GbrcW7IoN3j7u/JWFX6txvpviul31Bn+q7nCwxp+lX6g5E+kqve8+3GqhLT7YdOusdqP\nI1hytzrN+8m1tJUXUu2BYan6h1TSW6lvd+v987Zqn7G1z2r9eEu1z7FnHd1YtX0vdZsa+633\nSurQYaO65+QuSu19pb9U7a64OFfdm/bS5L75cYOcgVfoYep7t97a8Yjn1AG///yT/dTPRvbL\n/YMfUtVbVXhN5Tb4xD/RS31n8MhB7dTQXQyUDKnqPe9+nCoh7X7YtGus9uMIlqxtqU6+6sIW\nt6tz0wwMS+3Nmw3P9W7fdJ+WHQa/l/as/urmjq0a7X/qfUWVt6gZUum9J+c2OqyvvzuW7326\n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"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3deWAU5f348QdCuANawAOk2Jaq\n9cBj0aKICijW1nAIKJec+hOBFgURFRViORRUFH8qovb7RbFI8QYUD7SilcuKJ6gIeCAI4QxC\n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\nSBBASIQEAYRESBBASIQEAYRESBBASIQEAYRESBBASIQEAYRESBBASIQEAYRESBBASIQEAYRE\nSBBASIQEAYRESBBASIQEAR9FsoIeQRghVYiQkoeQCAkCCImQIICQCAkCCImQIICQCAkCCImQ\nIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQ\nIICQCAkCCImQIICQDiLfMgXWrZE5voqMDXoEYXlyIQX9d4I0fiIlDz+RCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkCCImQIICQCAkC\nCImQIICQUiikMb02Bj2CtQgphULqH/kp6BGsRUiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQ\nQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiuH+7qedUt\nX2i9874+PbI2EhISRkiOgmsf2rVnRtcc/feRa36cNHg/ISFRhOTYnrlS662ZX2W3X+38VOr4\nMSEhUYTkGjE5J/ef1+z9oHOBc2LILOdg7ZIlS5Zut0z/yJagR7DWJ5G7gh5BWM5hhLRlcGZm\n72/0/L7uiVHTnIPxkUjk3LhvHxIDIvlBj2CtVZGxQY8grPgVTvwh5Q19aPuu2T23zu/nnvJC\nenvKlCkP77bMgMjOoEew1heRu4IeQVriIX3UPtc57P/K4uhTu9lF5wf9LFUar5GSh9dIjv9m\n7nIOe7+ypf0qrXd0+JyQkChCcuzq/dDOvc93Xq8n3LBm3ZhhBYSERBGS69usnt1u/tQpanLv\nnuMP3EHQqyKNkJKHkA4i6FWRRkjJQ0iEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGE\nREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGE\nREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGE\nREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGEREgQQEiEBAGE\nREgQQEiEBAGEREgQQEiEZIFLInC8JLlNCalCFofUog/+Qkg+sTikP//SfW2B6YTkE0KyGiH5\nhZCsRkh+ISSrEZJfCMlqhOQXQrIaIfmFkKxGSH4hJKsRkl8IyWqE5BdCshoh+YWQrEZIfiEk\nqxGSXwjJaoTkF0KyGiH5hZCsRkh+ISSrEZJfCMlqhOQXQrIaIfmFkKxGSH4hJKv5FVLu0hey\ndV4ik0mOZQJCsppPId2bodQifVvfBFKSHMsEhGQ1f0KaptpPdUKaXmVi/JNJjmUCQrKaPyE1\nG6hznZD0rSfEP5nkWCYgJKv5E1L1N6MhvZ4e/2SSY5mAkKzmT0hHzYmG9K868U8mOZYJCMlq\n/oR08YW73ZC2nNou/skkxzIBIVnNn5DeSWs6VPXvUyf9/fgnkxzLBIRkNZ/e/n7rTOU4598J\nTCY5lgkIyWq+fbJh4/LlW3UiJMcyASFZjY8I+YWQrOZPSOm1CtU+9rIFcU4mOZYJCMlq/oQ0\n+Bx1aucup6mWPdrWrTQvvskkxzIBIVnNn5DeaPiuu1jcZJne1uK8+CaTHMsEhGQ1f0I684no\ncmprrWfVim8yybFMQEhW8yekam9El/Nra/1SRnyTSY5lAkKymj8hHdetwFsObKDzLjs7vskk\nxzIBIVnNn5BGq9NunHjviLPUX3UnNTO+ySTHMgEhWc2fkPaPO9r9ZMMRw/bqyc/EOZnkWCYg\nJKv59QvZgvXLF6/K3/l1/JNJjmUCQrKav59seOtX8U8mOZYJCMlqPoU0t2erli1btsioH/9k\nkmOZgJCs5k9IM1WV41TD6qp1nJ9qcEmOZQJCspo/IUX+lKPTPsubclFO/JNJjmUCQrKaPyFl\nzNU67VOtbxgc/2SSY5mAkKzm05efvKZ1nYVav9cw/skkxzIBIVnNp8/addmrTxml9ctxfs7O\nJTmWCQjJav6E9LRqq+9IuzarUZyf/HZJjmUCQrKaT29/z5ygd12iVONl8U8mOZYJCMlqfv5C\ndtWKfQlMJjmWCQjJaj69/b0iunzuD/FPJjmWCQjJav6EpKJP6fKyqsY/meRYJiAkq/kRkjrg\nrPgnkxzLBIRkNT9C+vhB1WGA65o7f4h/MsmxTEBIVvPnqd2lCfzziSKSY5mAkKzGF0T6hZCs\n5k9IG/s0rBx9kRT/ZJJjmYCQrOZPSF2rtO3jvUoaEP9keywzILIr6BGSpB0huSHNF92oxXdc\nIqR6LyU+2TbL9I9sDnqEJOEnknZDekVym+4ovuMSIdXclPhkkj8oTcBTO6v589Su1TuJTyY5\nlgkIyWr+hPThOR8kPJnkWCYgJKv5E1LLxqpmE0/8k0mOZQJCsppPT+3aFol/MsmxTEBIVuMX\nsn4hJKv5FVLu0heydV4ik0mOZQJCsppPId2bodQifVvfBFKSHMsEhGQ1f0KaptpPdUKaXmVi\n/JNJjmUCQrKaPyE1G6hznZD0rSfEP5nkWCYgJKv59L12b0ZDej09/skkxzIBIVnNn5COmhMN\n6V914p9MciwTEJLV/Anp4gt3uyFtObVd/JNJjmUCQrKaPyG9k9Z0qOrfp076+/FPJjmWCQjJ\naj69/f3Wme6/6jvn3wlMJjmWCQjJar59smHj8uVbdSIkxzIBIVnNp5A2THEONmVtTGAyybFM\nQEhW8yekL49xvxnyW3XM6vgnkxzLBIRkNX9C6th0qbtY0fSK+CeTHMsEhGQ1f0Jq8I/o8rGM\n+CeTHMsEFofU6l4M8CWkGjOiy2dqEpJ9Lo7A4UdI512a7y5yzm5JSPYhJI8fIc2v9NvBY+7s\n16DyfEKyzyWR5mjuz9vfb0TcX8g2mxd/R4QUGrzZoH38hezmT7/ISWgyybFMQEhW8yekcxP5\nUVRIciwTEJLV/AnpuPsSn0xyLBMQktX8CenlP7yYyP/D7JEcywSEZDWfvtfuNFW1IV8QGfQI\nSUJI2rdvWm3DF0QSktX4gki/EJLV+IJIvxCS1fiCSL8QktX4gki/EJLV+IJIvxCS1fiCSL8Q\nktX4gki/EJLV+IJIvxCS1fiCSL8QktX4gki/EJLV+IJIvxCS1XwJKXfJ+9sTnkxyLBMQktX8\n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\nMEIKD0IyGCGFByEZjJDCg5AMRkjhQUgGI6TwICSDEVJ4EJLBCCk8zA2pOZoTUmiYGtIz3QN3\nfqRb0CN0t+3hVoSQ/ArJAP0jPwU9grU+7zU16BGEEVKFCCl5tuncoEcQRkgVIqTkISRCggBC\nIiQIICRCggBCIiQIICRCggBCIiQIIKSDyLFM/8i2oEew1s96X9AjCNspF9JuywyI7Ax6BGvt\n0XlBjyBNLqSgf7hK46ld8vDUjpAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQIIiZAggJAICQII\niZAggJAKvZW5SOud9/XpkbWRkJAwQoradnVnJ6S/j1zz46TB+wkJiSKkqAlPXr1IZ7df7fxU\n6vgxISFRhOT54JpcJ6QPOhc4x4fMIiQkipBcO3sv105I8/u6J0ZNcw5eHTdu3N25lhkQ+Tno\nEay1R+cHPYK0wwjpgQe0FxkAQ5UAAAhCSURBVFK/4pDGRyKRc+O+fUgMiOQHPQJCo/itgvhD\nWt47xwtpcfSp3WznYMOKFStWbrNM/8jmoEewVo7eG/QIwnYkHtLEzj169Gh/5fgt7VdpvaPD\n50XnB/0sVRqvkZKH10iOHPd2vd7YoSfcsGbdmGEFhIREEVIR56md3jW5d8/xB+4g6FWRRkjJ\nQ0gHEfSqSCOk5CEkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIk\nCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQiIk\nCCAkQoIAQiIkCCAkQoIAQiIkCCAkQoIAQkqhkIa0JqRkIaQUCmmfdWtkDkIiJAggJEKCAEIi\nJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIi\nJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIi\nJAggJEKCAEIiJAggJEKCAEIiJAggJEKCAEIiJAggpBQyIJIf9AjWWhUZG/QISUNIpRBS8hBS\nCiGk5CGkFEJIyUNIKeS5KfuDHsFam6csCHqEpCEkQAAhAQIIqaz8zP8e7OKNmd/6NYkVUmNz\nplpIN3b+0V0MfvXAWZ+sKrwoMzOz43Uz9qbInk+2FNucKRdSj9vcRWxIWYXHb3wgO3v9uz2m\npcieT7YU25wpF9KsHm/qaEjbJvbuPGKFvq39FTdEL5rqHs7u5e35b+/oftWd67XOHtf16kf2\n6K0Te3e55RutVw/vMuRdO/Z8sqXY5ky5kOa+2X17NKTho7fvefKqHXpA0U8kb8+/0t3b8wMn\n5+6aMELrYXdv/XHwVD18Ys7ep3vtLRgwOXfTbXbs+WRLsc2ZeiHpURO9kFZnfq/13q5vlwip\nYO21D3h7fucerT/oWLA6c4Pz9+aybzK3Opd1W7jSPbnIjj2fbCm2OVMwpPWdl7khvd++wDk9\n6NkDIXXs2rVTp/t3eXv+k9uuvrpbZn70Snphpmf2wvb7tf7Ojj2fbCm2OVMwJD27f+6QopCu\nn3EgpPvWr9/ofqzB2fPrr5i9Vy/OzP9Pe+9zDosz93pXWeDeZo0dez7ZUmxzpmJI+UOmDX3V\n2YHfaZ3beUGp10ja2/MLO+RrPT0z39vLX839PvNL5/wN+pPMn9y/T63Y88mWYpszFUPSX3Xs\n5cQzYkxO7qO9dulBT/4cvShmz3+Z+fm+d2/J3KSH3/nTuqGP6FEjNuW/2mXL3h6Td64bacee\nT7YU25wpGZKelumEtGlsr55Z67R+pXO/6EUxe17/T/ceU3be2G3j9rFdev3/XL31nquuHPG5\nk+ANnYf8N3NtQMOHSoptzlQLCUgKQgIEEBIggJAAAYQECCAkQAAhAQIICRBASIAAQgrMaOXK\nuOB553jLE0XvOnvcWfWqNLh0vuid4mAIKTCj1a2PP/7Y7b9WD8iEtLx4X245vuaQGTPH/rby\nzNhzS10JotiugRmtFrmLnCYZuSIhTSnel/erZ93F1kZN9secW+pKEMV2DUxhSHqYWhINaebZ\nNTIiM92z3rig9tFd3S83+vfFGTXOfNI50ur8hWdXbzhx38iGtduuLnnBR20yGnTbqC91nidG\novc8QkW/GOmH3UXnFt119OTpp7uXdqin9fprfl3t6CtW+rzmNiKkwBSFdLt63wvpWdVp7tw/\nqblOR5XazXjyt8du0G+lXTDnjYHqXq3bHtf6vz90UhdnrXu3zl907AWNz35z43NpffTXHdSy\nFdF7nqk6bSv8Q6LnFt919OSBkFoc88Tbz5x21K4g1t8uhBSYopDOr7LdC2l8m71a76jSU+vm\nv8nTeknVB/WZTd2HeHvnuV9b9bHW76nznJM9a+kSF7zvHGvbUOsBxfty/5Wq2p/vWez9a1Tv\n3AN37Z0sDmmHusU58s34H/1dcxsRUmBGq3kbNqxf2l9dH/tmw3Gt9GY1KHp8oxqa65iqluq2\nTj36G3WTc3iTyom9oKZ7zT6VY0PSen6PhkrVv2VXiXOduy4V0r56Td7i/wwQQUiBib79raoM\n2hMNaccdp9ZJS1Mt9WdqTPQay1WhF3TbJs7ptWqCczhSbSt9gdfHgJL7cvXjrdS5+6PnFt91\nqZD0+79R9To/k+fbOtuLkAIzWk1+7bX573mvZtyQLki7beGnnzVsqb9Qd0avsVz1X+TJLhNS\nyQvKC0nrgv7q3ei5xXddOiSdv+Cmk1Xz3X6sr90IKTBFr5FcTkir1LXOkbzqLXWO8v7t+7eb\ntqg+RVcoGVLpC0qGtGfGi9Ej09UM79wDdx290pmnupf+sV7h9R9R/yu/dqmGkAJTKqQVKku7\nv+dpofVpDXK0Xuk8wTunrvvzavqovFIhlb7A6+MaVfgUreD3Ddx3yHX+5epT79yYu/au1KZ+\ngfMCrEY9/eFVG7X70muSf2ttK0IKTKmQ9jVu9PL7wy+6KOPtn+dW/uM/p51w1Ab97/Rm01+/\nPb1v6Z9IpS/wQrpTZT0Xvbd3amdc++ATdzVTf42eG3PX3pUeUBN++qj1KfX0hoxmT7757Hl1\nvvF95a1DSIEpFZJedm7No6/bMaf+kV/peS1qHtXpa+f89y7JSD9hYl6ZkEpd4IX0w5npRe/9\nfdH/d9WqHH2Z25V37oG79k7uHdao2ulzBmdo/Umno9IbdvrI3xW3EiEBAggJEEBIgABCAgQQ\nEiCAkAABhAQIICRAACEBAggJEEBIgABCAgQQEiDg/wB49VlRyPly8wAAAABJRU5ErkJggg=="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAADAFBMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGC\ngoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OU\nlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWm\npqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4\nuLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnK\nysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc\n3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u\n7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////i\nsF19AAAACXBIWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dCXwU5d3A8Qch3IG2ggdH6eHb\nautFtyqKqIDV2jYcDSmnXGpFwBdFeZEbPKCFUqy+KoWqL/VAiieConiiVZBWUCnWcojKIUSu\n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\n70Qp5gFjL5sAAAAASUVORK5CYII="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "# Average percentage of placed vs not placed candidates\n",
        "campus %>%\n",
        " group_by(status) %>%\n",
        "  summarise(Mean_SSC = mean(ssc_p), Mean_HSC = mean(hsc_p), Mean_Degree = mean(degree_p))\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 161
        },
        "id": "XgQ2VFPSLBB8",
        "outputId": "bcb0fbb1-4f72-44c0-b94e-c1e895c32503"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<table class=\"dataframe\">\n",
              "<caption>A tibble: 2 × 4</caption>\n",
              "<thead>\n",
              "\t<tr><th scope=col>status</th><th scope=col>Mean_SSC</th><th scope=col>Mean_HSC</th><th scope=col>Mean_Degree</th></tr>\n",
              "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
              "</thead>\n",
              "<tbody>\n",
              "\t<tr><td>Not Placed</td><td>57.54403</td><td>58.39552</td><td>61.13418</td></tr>\n",
              "\t<tr><td>Placed    </td><td>71.72149</td><td>69.92655</td><td>68.74054</td></tr>\n",
              "</tbody>\n",
              "</table>\n"
            ],
            "text/markdown": "\nA tibble: 2 × 4\n\n| status &lt;chr&gt; | Mean_SSC &lt;dbl&gt; | Mean_HSC &lt;dbl&gt; | Mean_Degree &lt;dbl&gt; |\n|---|---|---|---|\n| Not Placed | 57.54403 | 58.39552 | 61.13418 |\n| Placed     | 71.72149 | 69.92655 | 68.74054 |\n\n",
            "text/latex": "A tibble: 2 × 4\n\\begin{tabular}{llll}\n status & Mean\\_SSC & Mean\\_HSC & Mean\\_Degree\\\\\n <chr> & <dbl> & <dbl> & <dbl>\\\\\n\\hline\n\t Not Placed & 57.54403 & 58.39552 & 61.13418\\\\\n\t Placed     & 71.72149 & 69.92655 & 68.74054\\\\\n\\end{tabular}\n",
            "text/plain": [
              "  status     Mean_SSC Mean_HSC Mean_Degree\n",
              "1 Not Placed 57.54403 58.39552 61.13418   \n",
              "2 Placed     71.72149 69.92655 68.74054   "
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "From the above it is clear that the percentages effect placement  the students."
      ],
      "metadata": {
        "id": "hYLOGEi-e6oa"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "# Bar plot to show placement status across specializations\n",
        "ggplot(campus, aes(x=specialisation, fill=status)) +\n",
        "  geom_bar(position=\"dodge\") +\n",
        "  ggtitle(\"Placement Status Across Degree Specializations\") +\n",
        "  xlab(\"Degree Specialization\") +\n",
        "  ylab(\"Count of Students\")"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 437
        },
        "id": "QlCdmtE_hAts",
        "outputId": "7de02305-855a-48cf-9fa2-49a0a9a09a4b"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "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\ne+65WbNmHT16tNjp63S63NzcAo09evTw8fFJSUm5evWqq6trdHS00v7666/b2dlduHBh7969\ne/bsGT16tBCiW7duQohTp06lpaW1a9euc+fOmZmZ+fn5UVFRQUFBt27d2rJly+LFi590RQgh\nzF/uxNPT8+jRo998883NmzebN2/es2dP41MZGRnu7u6LFy+uX79+mdQBAABQCgaDYfDgwStX\nroyNjS2wa+348eOHDh06e/Zs1apVhRBTpkxZtGjRjz/+OGDAAJVTPnXq1Jw5cwpf2e3AgQMO\nDg5OTk5CiL59+/bu3dtgMJw4ceLw4cMJCQk+Pj5CiBUrVty4cePYsWOHDh3asGGDh4eHEGLS\npEnz5s3bvHmzv79/cnLyjh07nJ2dnZ2dY2Njd+3a9eRro5hbilWpUuX9998v3P7GG2/069dP\nue4JAACAdS1atKhRo0bbtm0LDw83Nl68eNHGxiYoKEh5qNPpatSokZycbH5Sixcv/vrrr4UQ\nyo66Xr16zZo1q0Cf48ePT5ky5ezZs0KI7Ozs3NxcvV6flJSk0WiMVxRp2rRp06ZN16xZI4Tw\n9fU1ffmlS5eEEBqNpkaNGkpLnTp1SrXcBRVzS7G/4uDgQKoDAABPicDAwAkTJrzzzjsZGRlm\nIkp+fn5OTo75SfXq1SsxMTExMfGPP/54/Pjx8uXL3dzcTDskJSWFh4d37NgxOTk5NTVVSYFC\nCGW+BoPBtLNOpxNCZGZmGkyMHTs2Ozvb+BIhRF5eXkkXuUilDHYAAABPlVGjRrm5uY0fP97O\nzk5pqVOnTn5+vrJfTQjx6NGjK1euFLtvzM3NLTAwMDAwsEaNGkVe1u3IkSN5eXlxcXGOjo5C\niIMHDyrtgYGBBoPh3LlzysPffvtt7ty5yuwSExONL1d21/n5+RkMhitXriiNxlc9IYIdAACQ\nga2t7VdffTV//vxr164pLcHBwaGhoaNGjbpz505GRsbo0aNdXV2VUxmcnJySkpLu379fihnV\nrFlTr9cfPHgwOzs7ISFh//79QogbN24EBwe3bNly5MiRly9f/uOPP4YOHXr27NkGDRq0b99+\n5MiRV69ezc3NXbBgQaNGjW7cuNG6dWsPD4+JEyfeu3fvjz/+mDdvXpmsBIIdAACQRIsWLd55\n553bt28bWxISEuzt7Rs0aFCrVq3k5OS9e/dWqlRJCDF06ND58+c3atSoFHNp1arVqFGjIiMj\n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\ncmrXrj148OC6desKIUaMGJGcnGzs5ujouHbtWksXAwAAIDGLB7spU6bY29tPnDhRp9OtXr16\n0qRJX331laOjY0ZGxttvv92qVSulm40N+w4BAACeiGWDXXp6upeXV//+/f39/YUQAwcO3L17\nd0pKSp06ddLT0729vT09PS1aAAAAQMVh2WDn6uo6duxY48M7d+7Y2Nh4enrm5uZmZ2cfOHBg\n5cqV6enpgYGBAwcOrF69uulrb9y4YTAYlL91Op1Wq7VoqXhq8dY/DXgXgDLHZgVLsPihWKP0\n9PQ5c+Z069bN3d39wYMHlStXzsvLi4mJEUIkJCSMHTt2wYIFzs7Oxv79+/d/+PCh8ndERMTE\niRPLrVQABbi7u1tistmWmCjwjLDQZoUKrpyC3bVr1yZPntykSZPo6GghhJub2/Lly43Pjh49\nOjo6ev/+/R07djQ2hoWFZWZmKn8///zz2dlW/QqYMMqac4cQonMva1dQoVl5AwRkZPXNysHB\nwboFwBLKI9idOHFi2rRpffr06dKlS5EddDqdl5dXWlqaaWN8fLzpwwLPljNXK84beAqkp6db\nYrJsWajILLRZqUewk5LFz0U9e/bsv/71rw8++MA01V25cmXu3Ll5eXnKw6ysrNu3b3t7e1u6\nGAAAAIlZdo9dTk7OrFmzunbtWqNGDeMuNxcXlypVqhw4cCAvL6937956vX758uUuLi6hoaEW\nLQYAAEBulg12586dS01NXb169erVq42NQ4cOjYiImDx58rJly9577z07O7t69ep9+umn7BMG\nAAB4EpYNdsHBwZs3by7yqdq1a0+ePNmicwcAAKhQuN8DAACAJAh2AAAAkiDYAQAASIJgBwAA\nIAmCHQAAgCQIdgAAAJIg2AEAAEiCYAcAACAJgh0AAIAkCHYAAACSINgBAABIgmAHAAAgCYId\nAACAJAh2AAAAkiDYAQAASIJgBwAA/l979xoU1XUAcPwsu4BZXJCHoBRMWEkkBSwUQaiIBqRB\nrRhCS1CmSUVExozRgo06k1RTR43RicZH7GhL2rROSEKUMRQUpWl8jFpINCb1CTU+UUrDS5CH\ny/bDbXY2SwRaWS45/n+f2L33nnvu4s3+s3t3gSQIOwAAAEkQdgAAAJIg7AAAACRB2AEAAEiC\nsAMAAJAEYQcAACAJwg4AAEAShB0AAIAkCDsAAABJEHYAAACSIOwAAAAkQdgBAABIgrADAACQ\n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\nkZubW3l5ufWT0KeffmoymXreqqioKDIy0vIkVFJS0tLSsnPnzpaWlueffz4yMnL06NGWlSdP\nnjxr1izrzYcNG6bRaEJDQ/vvOIDBYgDOqV4lJCRkZGQoP9fX1+/Zs+ell17asmWLj4/P/3g0\nAPofYQc7ioiI+Pjjj+fMmaPT/fdfWnl5+dixY48ePWqzpslkWrlypU6na2trO3PmzGeffVZW\nVrZx40YhRF1dndFo1Gq1Tk5OQggHh29cP+Di4jJy5Mjuo6WkpKxatWrs2LEzZ85csmRJeXl5\nXV1dW1tbRkZGfHy8vQ4YsLMBOKd6NWTIEC8vL+VnLy+vvLy8WbNmVVZWTp8+/X4PD8B94xo7\n2NGjjz6q1+srKiqUm7dv366srIyNje2+5pYtW9rb25ctW7Z27drhw4dnZWUpz0DKIKdPn/77\n3//+4osvJiQk/E9vsGo0GgcHh6Kiotzc3G3btqWnp2/fvr2tre3+Dw1QhernVHcODg4ODg53\n7969n0EA9BdesYN9JSYmHjx4MCYmRghx+PDh4OBgy//rW+zatevixYuvvvqqs7OzzSKTyVRf\nX3/hwoX3339/wYIFQUFBzc3Njo6OQ4YM6fscnnjiCeX7un7wgx+0t7fX1taOGjXq/g4LUI29\nz6mSkpLS0lLrTbq6uu41mTt37hQUFHR0dERHR/fDsQG4b4Qd7CshIaGgoKC+vt7d3b28vDwl\nJcVmhQMHDhw9enTNmjUGg8FmkdlsXrVqVVdX1zPPPHPkyBHluqLCwsKOjg7Lxd3dn4Q2bNhg\n8wqE5WnP0dFRCNHR0dF/xwcMNHufUxMnTvzZz35mvdUvf/lL65v79u0rLy9Xfm5ra3vkkUde\nfvllLrADBgnCDvbl4eERFhb20UcfRUVF1dTUjB8/vrq62nqFixcvhoeH5+fnr1+/XqvVWi86\nfvz4lStXdu7cqdVqL1y4kJ+fn5mZeejQoeXLl1vW6f4k1P2SO41G09+HBajG3ueUwWB4+OGH\nrbeyOYMmTpyofGKptbX15ZdfTkpKCg8P7//jBPB/Iexgd4mJiQUFBa2trZMnT7Zc8W2Rk5MT\nFBT0wgsvvP3223PmzLFeVFdX5+npqTwzLVmyJC8v79KlS0aj0fqLFbo/CQkhev2QIPCdZtdz\nqlfWn1jKzs7eunVraGiov7///R0TgP7Bhydgd5GRkfX19X/729+mTJnSfamDg8PQoUPz8vL2\n7t178uRJIYSzs3NNTU1LS0twcHBVVVVpaWlTU1Nra6vRaDx79qyXl1dTUxMfgMCDbPCcU5Mn\nT46IiFi/fn1nZ+f9HhWA/kDYwe60Wu0TTzxhMBh6+PBdcHBwamrqxo0bGxsbk5KSSkpKFi5c\naDQalyxZsn///rlz5y5ZskSv169atery5cuZmZkffPDBQB4CMKgMqnNqwYIF9fX1f/jDH/7P\ngwHQrzRms1ntOQAAAKAf8IodAACAJAg7AAAASRB2AAAAkiDsAAAAJEHYAQAASIKwAwAAkARh\nBwAAIAnCDgAAQBKEHdCfVq5cqbHi5uYWERGxdOnSS5cuqT21vqqrq1uzZk1ERISXl5ejo6O3\nt3dSUtL+/fvtvd/o6OigoKC+rBkbG2tZs+9b2WMmADDY2P71aAD3b/ny5Uaj0Ww2NzQ0VFZW\nbt68efPmzW+++abNX2QfhL766qvIyMja2trMzMzc3FytVltdXZ2fnz9t2rRdu3alp6fbb9fp\n6el37twZmK1snDp1Kjw83PJnePplTABQBWEH9L/k5OTo6GjLzWvXrqWkpGRlZfn6+j755JMq\nTqxXf/zjH7/88suCgoJnnnnGcueCBQtCQ0OXLVuWlpbm4GCvl/kXL148YFvZOHz4cL+PCQCq\n4K1YwO78/Pz27t07ZMiQF1980XLnxx9/nJiY6Orqqtfrf/jDH+bn51sWdXV1rVy50t/ff8iQ\nIREREQcOHFi4cKGTk5OyNDY2Ni4urri42N/f/0c/+lGvo/W61FpNTY0QIiIiwvpOd3f348eP\nnz17Vqm6iIiImJiYv/71r1FRUXq93sPDIzMzs7GxsY+7O3DgwKRJkwwGw4gRI9LS0qqqqpT7\nbd4ALSgoUMZ3dXUdN25cQUHBt07YslVlZaXm23zxxRc9D5iUlPTCCy8IITQazbhx47rPpLS0\nNC4uzmAwPPTQQyEhIa+//rrltb24uLiJEyeePHkyISHB1dXV29t71qxZtbW193p4AcDuzAD6\nz4oVK4QQx44d677o2WefFUJUVVWZzeaDBw9qtdq4uLgPP/ywrKwsJydHCLFhwwZlzdWrVwsh\n0tLS9u/f/7vf/W7kyJFRUVEuLi7K0vj4+LFjxwYFBW3btq24uLjX0XpeauOdd94RQqSkpNTX\n19/rGGNiYoYPHz5u3LijR4/+61//+tOf/uTo6JiSktKX3ZWVlWk0mh//+Md//vOff//73xuN\n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\nUOdyECQAAAAASUVORK5CYII="
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "Marketing and finance degree has more placements ie this degree has more demand in the market"
      ],
      "metadata": {
        "id": "YCxeZPcL84HT"
      }
    },
    {
      "cell_type": "markdown",
      "source": [
        "#STATSTICAL TESTS\n",
        "1.to check the dependence of degree specalization and  placement:**chi square test for independence**\n",
        "2.to check the difference betweem percentages between placed and non placed candiadates:**t-tes**t"
      ],
      "metadata": {
        "id": "jIKcivMg87AM"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "# Create a contingency table of specialization and placement status\n",
        "table_spec_status <- table(campus$specialisation, campus$status)\n",
        "\n",
        "# Chi-square test\n",
        "chisq.test(table_spec_status)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 109
        },
        "id": "jbVJjYJO9VtO",
        "outputId": "57067a29-e9d6-4992-b5ee-0538860e0f6b"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "\tPearson's Chi-squared test with Yates' continuity correction\n",
              "\n",
              "data:  table_spec_status\n",
              "X-squared = 12.44, df = 1, p-value = 0.0004202\n"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "As p-value is less tha 0.05 the degree specialization effect the placement ie they are dependent"
      ],
      "metadata": {
        "id": "HQOi6L2y9jti"
      }
    },
    {
      "cell_type": "code",
      "source": [
        "# T-test for SSC percentage and placement status\n",
        "t.test(ssc_p ~ status, data = campus)\n",
        "\n",
        "# T-test for HSC percentage and placement status\n",
        "t.test(hsc_p ~ status, data = campus)\n",
        "\n",
        "# T-test for Degree percentage and placement status\n",
        "t.test(degree_p ~ status, data = campus)\n"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 626
        },
        "id": "vXgdMi2F8ogJ",
        "outputId": "e8b3a3a9-ef0f-4ea4-bc23-96916e1bb675"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "\tWelch Two Sample t-test\n",
              "\n",
              "data:  ssc_p by status\n",
              "t = -11.333, df = 132.02, p-value < 2.2e-16\n",
              "alternative hypothesis: true difference in means between group Not Placed and group Placed is not equal to 0\n",
              "95 percent confidence interval:\n",
              " -16.65200 -11.70292\n",
              "sample estimates:\n",
              "mean in group Not Placed     mean in group Placed \n",
              "                57.54403                 71.72149 \n"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "\tWelch Two Sample t-test\n",
              "\n",
              "data:  hsc_p by status\n",
              "t = -8.0437, df = 120.8, p-value = 6.777e-13\n",
              "alternative hypothesis: true difference in means between group Not Placed and group Placed is not equal to 0\n",
              "95 percent confidence interval:\n",
              " -14.369177  -8.692886\n",
              "sample estimates:\n",
              "mean in group Not Placed     mean in group Placed \n",
              "                58.39552                 69.92655 \n"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "\n",
              "\tWelch Two Sample t-test\n",
              "\n",
              "data:  degree_p by status\n",
              "t = -8.0542, df = 130.34, p-value = 4.408e-13\n",
              "alternative hypothesis: true difference in means between group Not Placed and group Placed is not equal to 0\n",
              "95 percent confidence interval:\n",
              " -9.474703 -5.738019\n",
              "sample estimates:\n",
              "mean in group Not Placed     mean in group Placed \n",
              "                61.13418                 68.74054 \n"
            ]
          },
          "metadata": {}
        }
      ]
    },
    {
      "cell_type": "markdown",
      "source": [
        "there is a significant difference between the percentage of placed and not placed candidates"
      ],
      "metadata": {
        "id": "VcwwVTqB_azA"
      }
    },
    {
      "cell_type": "code",
      "source": [],
      "metadata": {
        "id": "1Qihi-kK_Z35"
      },
      "execution_count": null,
      "outputs": []
    }
  ]
}
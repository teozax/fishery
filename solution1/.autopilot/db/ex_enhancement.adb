<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>ex_enhancement</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>inputImage_data_stream_0_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>inputImage.data_stream[0].V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>inputImage_data_stream_1_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>inputImage.data_stream[1].V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>inputImage_data_stream_2_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>inputImage.data_stream[2].V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_4">
          <Value>
            <Obj>
              <type>1</type>
              <id>4</id>
              <name>I_enhanced_data_stream_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>I_enhanced.data_stream.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>16</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>27</id>
              <name>_ln10</name>
              <fileName>fishery/C++/src/ex_enhancement.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>10</lineNumber>
              <contextFuncName>ex_enhancement</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>C:\Users\xristina\Documents</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>fishery/C++/src/ex_enhancement.cpp</first>
                        <second>ex_enhancement</second>
                      </first>
                      <second>10</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>read_data1_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>8</count>
            <item_version>0</item_version>
            <item>36</item>
            <item>37</item>
            <item>38</item>
            <item>39</item>
            <item>43</item>
            <item>44</item>
            <item>45</item>
            <item>46</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>28</id>
              <name>_ln11</name>
              <fileName>fishery/C++/src/ex_enhancement.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>11</lineNumber>
              <contextFuncName>ex_enhancement</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\xristina\Documents</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>fishery/C++/src/ex_enhancement.cpp</first>
                        <second>ex_enhancement</second>
                      </first>
                      <second>11</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>guidedfilter204_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>16</count>
            <item_version>0</item_version>
            <item>41</item>
            <item>42</item>
            <item>47</item>
            <item>48</item>
            <item>49</item>
            <item>50</item>
            <item>51</item>
            <item>52</item>
            <item>53</item>
            <item>54</item>
            <item>55</item>
            <item>56</item>
            <item>57</item>
            <item>58</item>
            <item>255</item>
            <item>256</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>33</id>
              <name>_ln12</name>
              <fileName>fishery/C++/src/ex_enhancement.cpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>12</lineNumber>
              <contextFuncName>ex_enhancement</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>C:\Users\xristina\Documents</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>fishery/C++/src/ex_enhancement.cpp</first>
                        <second>ex_enhancement</second>
                      </first>
                      <second>12</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_8">
          <Value>
            <Obj>
              <type>2</type>
              <id>35</id>
              <name>read_data1</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:read_data1&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_9">
          <Value>
            <Obj>
              <type>2</type>
              <id>40</id>
              <name>guidedfilter204</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:guidedfilter204&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_10">
          <Obj>
            <type>3</type>
            <id>34</id>
            <name>ex_enhancement</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>3</count>
            <item_version>0</item_version>
            <item>27</item>
            <item>28</item>
            <item>33</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>24</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_11">
          <id>36</id>
          <edge_type>1</edge_type>
          <source_obj>35</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_12">
          <id>37</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_13">
          <id>38</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_14">
          <id>39</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_15">
          <id>41</id>
          <edge_type>1</edge_type>
          <source_obj>40</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_16">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>4</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_17">
          <id>43</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_18">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_19">
          <id>45</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>46</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>27</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>47</id>
          <edge_type>1</edge_type>
          <source_obj>9</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>48</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>50</id>
          <edge_type>1</edge_type>
          <source_obj>11</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>51</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>12</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>53</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>54</id>
          <edge_type>1</edge_type>
          <source_obj>14</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>55</id>
          <edge_type>1</edge_type>
          <source_obj>15</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>56</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>57</id>
          <edge_type>1</edge_type>
          <source_obj>17</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>58</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>255</id>
          <edge_type>4</edge_type>
          <source_obj>27</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>256</id>
          <edge_type>4</edge_type>
          <source_obj>27</source_obj>
          <sink_obj>28</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_35">
        <mId>1</mId>
        <mTag>ex_enhancement</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>34</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>137445</mMinLatency>
        <mMaxLatency>137445</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_36">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_37">
              <type>0</type>
              <name>read_data1_U0</name>
              <ssdmobj_id>27</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>7</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_38">
                  <port class_id="29" tracking_level="1" version="0" object_id="_39">
                    <name>inputImage_data_stream_0_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_40">
                    <type>0</type>
                    <name>read_data1_U0</name>
                    <ssdmobj_id>27</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_41">
                  <port class_id_reference="29" object_id="_42">
                    <name>inputImage_data_stream_1_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
                <item class_id_reference="28" object_id="_43">
                  <port class_id_reference="29" object_id="_44">
                    <name>inputImage_data_stream_2_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
                <item class_id_reference="28" object_id="_45">
                  <port class_id_reference="29" object_id="_46">
                    <name>I_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
                <item class_id_reference="28" object_id="_47">
                  <port class_id_reference="29" object_id="_48">
                    <name>I_COPY_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
                <item class_id_reference="28" object_id="_49">
                  <port class_id_reference="29" object_id="_50">
                    <name>I_2_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
                <item class_id_reference="28" object_id="_51">
                  <port class_id_reference="29" object_id="_52">
                    <name>ONES_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_40"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_53">
              <type>0</type>
              <name>guidedfilter204_U0</name>
              <ssdmobj_id>28</ssdmobj_id>
              <pins>
                <count>13</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_54">
                  <port class_id_reference="29" object_id="_55">
                    <name>I_enhanced_data_stream_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id="_56">
                    <type>0</type>
                    <name>guidedfilter204_U0</name>
                    <ssdmobj_id>28</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_57">
                  <port class_id_reference="29" object_id="_58">
                    <name>ONES_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_59">
                  <port class_id_reference="29" object_id="_60">
                    <name>N_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_61">
                  <port class_id_reference="29" object_id="_62">
                    <name>I_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_63">
                  <port class_id_reference="29" object_id="_64">
                    <name>mean_I_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_65">
                  <port class_id_reference="29" object_id="_66">
                    <name>I_2_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_67">
                  <port class_id_reference="29" object_id="_68">
                    <name>mean_II_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_69">
                  <port class_id_reference="29" object_id="_70">
                    <name>N_COPY_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_71">
                  <port class_id_reference="29" object_id="_72">
                    <name>a_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_73">
                  <port class_id_reference="29" object_id="_74">
                    <name>b_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_75">
                  <port class_id_reference="29" object_id="_76">
                    <name>mean_A_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_77">
                  <port class_id_reference="29" object_id="_78">
                    <name>mean_B_V_V</name>
                    <dir>0</dir>
                    <type>2</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
                <item class_id_reference="28" object_id="_79">
                  <port class_id_reference="29" object_id="_80">
                    <name>I_COPY_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_56"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>4</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_81">
              <type>1</type>
              <name>I_V_V</name>
              <ssdmobj_id>6</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_82">
                <port class_id_reference="29" object_id="_83">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_40"/>
              </source>
              <sink class_id_reference="28" object_id="_84">
                <port class_id_reference="29" object_id="_85">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_56"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_86">
              <type>1</type>
              <name>I_COPY_V_V</name>
              <ssdmobj_id>7</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_87">
                <port class_id_reference="29" object_id="_88">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_40"/>
              </source>
              <sink class_id_reference="28" object_id="_89">
                <port class_id_reference="29" object_id="_90">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_56"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_91">
              <type>1</type>
              <name>I_2_V_V</name>
              <ssdmobj_id>8</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_92">
                <port class_id_reference="29" object_id="_93">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_40"/>
              </source>
              <sink class_id_reference="28" object_id="_94">
                <port class_id_reference="29" object_id="_95">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_56"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_96">
              <type>1</type>
              <name>ONES_V_V</name>
              <ssdmobj_id>9</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>32</bitwidth>
              <source class_id_reference="28" object_id="_97">
                <port class_id_reference="29" object_id="_98">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_40"/>
              </source>
              <sink class_id_reference="28" object_id="_99">
                <port class_id_reference="29" object_id="_100">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_56"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_101">
      <states class_id="35" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_102">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>1</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_103">
              <id>27</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_104">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_105">
              <id>27</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_106">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_107">
              <id>28</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_108">
          <id>4</id>
          <operations>
            <count>15</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_109">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_110">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_111">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_112">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_113">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_114">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_115">
              <id>24</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_116">
              <id>25</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_117">
              <id>26</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_118">
              <id>28</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_119">
              <id>29</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_120">
              <id>30</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_121">
              <id>31</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_122">
              <id>32</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_123">
              <id>33</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_124">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_125">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_126">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_127">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>guidedfilter204_U0 (guidedfilter204)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>5</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>BRAM</first>
              <second>169</second>
            </item>
            <item>
              <first>DSP48E</first>
              <second>12</second>
            </item>
            <item>
              <first>FF</first>
              <second>28390</second>
            </item>
            <item>
              <first>LUT</first>
              <second>36096</second>
            </item>
            <item>
              <first>URAM</first>
              <second>0</second>
            </item>
          </second>
        </item>
        <item>
          <first>read_data1_U0 (read_data1)</first>
          <second>
            <count>3</count>
            <item_version>0</item_version>
            <item>
              <first>DSP48E</first>
              <second>4</second>
            </item>
            <item>
              <first>FF</first>
              <second>45</second>
            </item>
            <item>
              <first>LUT</first>
              <second>317</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_guidedfcXB_U (start_for_guidedfcXB)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>I_2_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
        <item>
          <first>I_COPY_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
        <item>
          <first>I_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
        <item>
          <first>ONES_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>32</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>64</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>44</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>3</count>
        <item_version>0</item_version>
        <item>
          <first>guidedfilter204_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>read_data1_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_guidedfcXB_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>2</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>guidedfilter204_U0 (guidedfilter204)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>28</item>
          </second>
        </item>
        <item>
          <first>read_data1_U0 (read_data1)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>27</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>4</count>
        <item_version>0</item_version>
        <item>
          <first>I_2_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>94</item>
          </second>
        </item>
        <item>
          <first>I_COPY_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>84</item>
          </second>
        </item>
        <item>
          <first>I_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>74</item>
          </second>
        </item>
        <item>
          <first>ONES_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>104</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>27</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>28</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>33</first>
        <second>
          <first>3</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>34</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>3</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_128">
        <region_name>ex_enhancement</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>34</item>
        </basic_blocks>
        <nodes>
          <count>16</count>
          <item_version>0</item_version>
          <item>18</item>
          <item>19</item>
          <item>20</item>
          <item>21</item>
          <item>22</item>
          <item>23</item>
          <item>24</item>
          <item>25</item>
          <item>26</item>
          <item>27</item>
          <item>28</item>
          <item>29</item>
          <item>30</item>
          <item>31</item>
          <item>32</item>
          <item>33</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>66</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>28</item>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>96</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>27</item>
          <item>27</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>grp_guidedfilter204_fu_66</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>28</item>
          <item>28</item>
        </second>
      </item>
      <item>
        <first>grp_read_data1_fu_96</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>27</item>
          <item>27</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="65" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="66" tracking_level="0" version="0">
        <first>I_enhanced_data_stream_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>28</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>inputImage_data_stream_0_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>27</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>inputImage_data_stream_1_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>27</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>inputImage_data_stream_2_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>27</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="67" tracking_level="0" version="0">
      <count>4</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>3</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>4</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>0</count>
      <item_version>0</item_version>
    </node2core>
  </syndb>
</boost_serialization>
